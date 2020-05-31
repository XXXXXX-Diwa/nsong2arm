#include "main.h"
#include "readKeyInfo.h"
#include <math.h>

uint32_t samplesDataOffset = 0;//样本坐标
uint8_t samplesBitTag = 0;//样本比特 8 / 16

uint8_t instTotalNum = 0;//音组数
uint8_t instVoice[50] = {0};//每个音组的voice值
uint8_t instSampleTotalNum[256] = {0};//每个音组的样本数
uint16_t instSamplesTotalNum = 0;//所有音组的样本总数
uint8_t instSampleKeyDamageStart[500] = {0};//音组中样本的键值开始
uint8_t instSampleKeyDamageEnd[500]={0};//音组中样本范围的结束
uint8_t instSamplePan[500] = {0};//音组中样本的pan
uint8_t instSamplePlayBack[500]={0};//音组中样本的playback
uint8_t instSampleKey[500] = {0};//音组中样本的键值
uint32_t instSampleAttack[500] = {0};//音组中样本的起
uint32_t instSampleDecay[500] = {0};//音组中样本的衰
uint32_t instSampleSustain[500] = {0};//音组中样本的延
uint32_t instSampleRelease[500] = {0};//音组中样本的消
uint8_t instSampleNum[500] = {0};//音组中样本的号

uint8_t samplesTotalNum = 0;//样本总数
uint32_t sampleDataStart[500] = {0};//每个样本数据的开始位置
uint32_t sampleDataEnd[500] = {0};//每个样本数据的结束位置
//16bit,循环值也是乘以16bit算
uint32_t sampleLoopStart[500] = {0};//每个样本循环的开始处
uint32_t sampleLoopEnd[500] = {0};//每个样本循环的结束处
uint32_t sampleRate[500] = {0};//每个样本的频率值
uint8_t sampleRootKey[500] = {0};//每个样本的键值

//long double Ratio = 1.0594630943592952645618252949463;
long double Ratio = 1.0594630943593;		//感觉不需要那么精确

static std::string onlyFour(char c[])
{
   std::string temp= c;
   temp=temp.substr(0,4);

   return temp;
}

[[noreturn]] formatError()
{
    std::printf("错误!非VGMTrans规格的Riff文件!\n");
    getchar();
    std::exit(1);
}

static uint8_t NpanToG(uint32_t Npan)
{
    uint8_t pan=0;
    uint16_t tran=Npan>>16;
//    std::printf("tran=%x\n",tran);
    if(tran==0)
    {
        return pan;
    }
    else if(tran>>12==0xF)//是负数
    {
        tran=~tran;//取反
//        std::printf("取反的pan%x\n",tran);
        pan=192-tran*32/250-1;
    }
    else
    {
//        std::printf("正数tran=%x\n",tran);
        pan=tran*63/500+192;
//        std::printf("正数pan=%x\n",pan);
    }
    return pan;
}

//panning=+192+pan/(500/64.0);



//计算符合的频率值
static uint32_t NRateToG(uint32_t Frequency,uint8_t rootKey)
{
    double FrequencyD = Frequency;
    if(rootKey == 60)
    {
        return Frequency;
    }
    else if(rootKey > 60)
    {
        for(int i = 0;i < rootKey - 60;i++)
        {
            FrequencyD /=Ratio;
        }
        return Frequency=FrequencyD;
    }
    else
    {
        for(int i =0;i< 60 - rootKey;i++)
        {
            FrequencyD *=Ratio;
        }
        return Frequency=FrequencyD;
    }
}

static uint8_t time_cmp(const uint16_t types[],uint16_t type_time){
    int i=127;
    for(;i>=0;i--){
        if(types[i]==type_time){
                break;
        }else if(i==0){
            fprintf(stderr,"没有一个和0x%X相匹配的数字! 类型为: 0x%X",type_time,types[0]);
            getchar();
        }
    }
    return uint8_t(i);
};


void readKeyInfo(std::string sf2FileName)
{
    g_inputFile =std::fopen(sf2FileName.c_str(),"rb");
    info_t info;
    std::fread(&info,1,sizeof(info),g_inputFile);
    if(onlyFour(info.sf2HeadName)!="RIFF")
    {
        formatError();
    }
    samplesDataOffset=info.infoDatalen+0x28;//保存样本数据坐标

    std::fseek(g_inputFile,info.infoDatalen,SEEK_CUR);

    sdta_t sdta;
    std::fread(&sdta,1,sizeof(sdta),g_inputFile);
    if(onlyFour(sdta.LISTstr)!="LIST"||onlyFour(sdta.sampleHeadName)!="sdta")
    {
        formatError();
    }
    if(onlyFour(sdta.sampleBitType)=="smpl")
    {
        samplesBitTag = 2;      //保存样本数据位数
    }
    else
    {
        samplesBitTag = 1;
    }
    std::fseek(g_inputFile,sdta.sampleDatalen+0xC,1);//跳过pdta
    phdrH_t phdrH;
    phdrL_t phdrL;
    std::fread(&phdrH,1,0x8,g_inputFile);
    if(onlyFour(phdrH.phdrStr)!="phdr")
    {

        formatError();
    }
    //保存音组总数
    instTotalNum=(phdrH.phdrDataLen /(sizeof(phdrL.presetName)+
    sizeof(phdrL.presetBagNdx)+sizeof(phdrL.bank)+
    sizeof(phdrL.Library)+sizeof(phdrL.preset)+
    sizeof(phdrL.Genre)+sizeof(phdrL.Morphology)))-1;
    std::printf("音组数量为: %d\n",instTotalNum);
    for(uint8_t i =0;i<=instTotalNum;i++)
    {
        std::fread(&phdrL,1,0x26,g_inputFile);
        instVoice[i]=phdrL.preset;
//        std::printf("%d",instVoice[i]);
    }
    pbag_t pbag;
    std::fread(&pbag,1,8,g_inputFile);
    if(onlyFour(pbag.pbagStr)!="pbag")
    {
        formatError();
    }
    std::fseek(g_inputFile,pbag.pbagDatalen,1);

    pmod_t pmod;
    std::fread(&pmod,1,8,g_inputFile);
    if(onlyFour(pmod.pmodStr)!="pmod")
    {
        formatError();
    }
    std::fseek(g_inputFile,pmod.pmodDatalen,1);

    pgen_t pgen;
    std::fread(&pgen,1,8,g_inputFile);
    if(onlyFour(pgen.pgenStr)!="pgen")
    {
        formatError();
    }
    std::fseek(g_inputFile,pgen.pgenDatalen,1);

    instH_t instH;
    std::fread(&instH,1,8,g_inputFile);
    if(onlyFour(instH.instStr)!="inst")
    {
        formatError();
    }
//    fseek(g_inputFile,instH.instDatalen,1);

    instL_t instL;
    for(uint16_t i=0;i<=instTotalNum;i++)
    {
        std::fread(&instL,1,22,g_inputFile);
        //得到每个音组样本的数量(累加形式)
        instSampleTotalNum[i]=instL.instBagNdx;
    }
    instSamplesTotalNum=0;
    for(uint16_t i=0;i<instTotalNum;i++)
    {   //纠正每个音组样本的数量为正确形式
        instSampleTotalNum[i]=instSampleTotalNum[i+1]-instSampleTotalNum[i];
        //得到全部音组样本的总数量
        instSamplesTotalNum += instSampleTotalNum[i];
    }
    std::printf("音组中样本总数为: %d\n",instSamplesTotalNum);

    ibag_t ibag;
    std::fread(&ibag,1,8,g_inputFile);
    if(onlyFour(ibag.ibagStr)!="ibag")
    {
        formatError();
    }
    std::fseek(g_inputFile,ibag.ibagDatalen,1);

    imod_t imod;
    std::fread(&imod,1,8,g_inputFile);
    if(onlyFour(imod.imodStr)!="imod")
    {
        formatError();
    }
    std::fseek(g_inputFile,imod.imodDatalen,1);

    igenH_t igenH;
    std::fread(&igenH,1,8,g_inputFile);
    if(onlyFour(igenH.igenStr)!="igen")
    {
        formatError();
    }
    if(instSamplesTotalNum!=igenH.igenDatalen/44)
    {   //应对Polyphone对sf2文件的修改
        if(uint32_t(instSamplesTotalNum-instTotalNum)!=igenH.igenDatalen/44)
        {
            formatError();
        }
        instSamplesTotalNum-=instTotalNum;
        for(uint8_t i =0;i<instTotalNum;i++)
        {
            instSampleTotalNum[i]-=1;
        }
        std::printf("\n检测已经被Polyphone修改!\n\n更正:\n音组中样本总数为: %d\n\n",instSamplesTotalNum);
    }
    igenL_t igenL;
//    int instNum=0;
//    int trad=0;
//    map<uint16_t,uint8_t>::iterator it;
    for(uint8_t i=0;i<instSamplesTotalNum;i++)
    {
        std::fread(&igenL,1,44,g_inputFile);
        instSampleKeyDamageStart[i]=igenL.keyDamage>>16;//键范围始保存
        instSampleKeyDamageEnd[i]=igenL.keyDamage>>24;//键范围终保存
//        std::printf("%x %x\n",instSampleKeyDamageStart[i],instSampleKeyDamageEnd[i]);
        instSamplePan[i]=NpanToG(igenL.pan);//pan值保存
        instSamplePlayBack[i]=(igenL.loopPlayBack>>16)*16;//playback保存
        instSampleKey[i]=igenL.rootKey>>16;//key值保存

        instSampleAttack[i]=time_cmp(g_atk_times,igenL.attack_s>>16);//atk值转化保存
        instSampleDecay[i]=time_cmp(g_dec_times,igenL.decay_s>>16);//dec值转化保存
        instSampleSustain[i]=time_cmp(g_sus_times,igenL.sustain_dB>>16);//sus值转化保存
        instSampleRelease[i]=time_cmp(g_rel_times,igenL.release_s>>16);//rel值转化保存
//        it=atk_map.find(igenL.attack_s>>16);
//        if(it!=atk_map.end()){
//            instSampleAttack[i]=it->second;
//        }else{
//            fprintf(stderr,"没有找到key: %d 对应的值",igenL.attack_s>>16);
//            getchar();
//            exit(1);
//        }
//        it=dec_map.find(igenL.decay_s>>16);
//        if(it!=dec_map.end()){
//            instSampleDecay[i]=it->second;
//        }else{
//            fprintf(stderr,"没有找到key: %d 对应的值",igenL.decay_s>>16);
//            getchar();
//            exit(1);
//        }
//        it=sus_map.find(igenL.sustain_dB>>16);
//        if(it!=sus_map.end()){
//            instSampleSustain[i]=it->second;
//        }else{
//            fprintf(stderr,"没有找到key: %d 对应的值",igenL.sustain_dB>>16);
//            getchar();
//            exit(1);
//        }
//        it=rel_map.find(igenL.release_s>>16);
//        if(it!=rel_map.end()){
//            instSampleRelease[i]=it->second;
//        }else{
//            fprintf(stderr,"没有找到key: %d 对应的值",igenL.release_s>>16);
//            getchar();
//            exit(1);
//        }

        instSampleNum[i]=igenL.sampleNum>>16;//当前音组的样本的序号
//        std::printf("%x %d\n",instSampleNum[i],i);
    }
    if(instSamplesTotalNum*44!=igenH.igenDatalen)
    {
        if(instSamplesTotalNum*44>igenH.igenDatalen)
        {
            formatError();
        }
        //纠正流坐标
        std::fseek(g_inputFile,igenH.igenDatalen%(instSamplesTotalNum*44),1);
    }
    shdrH_t shdrH;
    shdrL_t shdrL;
    std::fread(&shdrH,1,8,g_inputFile);
    if(onlyFour(shdrH.shdrStr)!="shdr")
    {
        formatError();
    }
    samplesTotalNum=(shdrH.shdrDatalen/(sizeof(shdrL.sampleName)+
    sizeof(shdrL.sampleDataStart)+sizeof(shdrL.sampleDataEnd)+
    sizeof(shdrL.loopStart)+sizeof(shdrL.loopEnd)+
    sizeof(shdrL.sampleRate)+sizeof(shdrL.originalKey)+
    sizeof(shdrL.Correction)+sizeof(shdrL.sampleLink)+
    sizeof(shdrL.sampleType)))-1;
    std::printf("\n当前sf2文件的样本块总数为: %d\n",samplesTotalNum);
    for(uint8_t i =0;i<samplesTotalNum;i++)
    {
        std::fread(&shdrL,1,46,g_inputFile);
        sampleDataStart[i]=shdrL.sampleDataStart;//保存每个样本的数据开始处
        //数据长度就是该样本数据的开始处-结束处
        sampleDataEnd[i]=shdrL.sampleDataEnd;//保存每个样本的数据结束处
        //循环的起点为该样本数据的开始处-循环处
        sampleLoopStart[i]=shdrL.loopStart;//保存每个样本的循环开始处
        //数据开始处如果和循环开始处仅仅差1,则不循环
        sampleLoopEnd[i]=shdrL.loopEnd;//保存每个样本的循环结束处
        //循环的长度就是每个样本循环的开始处-结束处
        sampleRootKey[i]=shdrL.originalKey;//保存每个样本的原始键值
        sampleRate[i]=NRateToG(shdrL.sampleRate,sampleRootKey[i])*4;//保存每个样本的频率

//        std::printf("转化后的样本%d频率为: %x\n",i,sampleRate[i]);

    }


}
