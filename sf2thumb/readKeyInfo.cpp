#include "main.h"
#include "readKeyInfo.h"
#include <math.h>

uint32_t samplesDataOffset = 0;//��������
uint8_t samplesBitTag = 0;//�������� 8 / 16

uint8_t instTotalNum = 0;//������
uint8_t instVoice[50] = {0};//ÿ�������voiceֵ
uint8_t instSampleTotalNum[256] = {0};//ÿ�������������
uint16_t instSamplesTotalNum = 0;//�����������������
uint8_t instSampleKeyDamageStart[500] = {0};//�����������ļ�ֵ��ʼ
uint8_t instSampleKeyDamageEnd[500]={0};//������������Χ�Ľ���
uint8_t instSamplePan[500] = {0};//������������pan
uint8_t instSamplePlayBack[500]={0};//������������playback
uint8_t instSampleKey[500] = {0};//�����������ļ�ֵ
uint32_t instSampleAttack[500] = {0};//��������������
uint32_t instSampleDecay[500] = {0};//������������˥
uint32_t instSampleSustain[500] = {0};//��������������
uint32_t instSampleRelease[500] = {0};//��������������
uint8_t instSampleNum[500] = {0};//�����������ĺ�

uint8_t samplesTotalNum = 0;//��������
uint32_t sampleDataStart[500] = {0};//ÿ���������ݵĿ�ʼλ��
uint32_t sampleDataEnd[500] = {0};//ÿ���������ݵĽ���λ��
//16bit,ѭ��ֵҲ�ǳ���16bit��
uint32_t sampleLoopStart[500] = {0};//ÿ������ѭ���Ŀ�ʼ��
uint32_t sampleLoopEnd[500] = {0};//ÿ������ѭ���Ľ�����
uint32_t sampleRate[500] = {0};//ÿ��������Ƶ��ֵ
uint8_t sampleRootKey[500] = {0};//ÿ�������ļ�ֵ

//long double Ratio = 1.0594630943592952645618252949463;
long double Ratio = 1.0594630943593;		//�о�����Ҫ��ô��ȷ

static std::string onlyFour(char c[])
{
   std::string temp= c;
   temp=temp.substr(0,4);

   return temp;
}

[[noreturn]] formatError()
{
    std::printf("����!��VGMTrans����Riff�ļ�!\n");
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
    else if(tran>>12==0xF)//�Ǹ���
    {
        tran=~tran;//ȡ��
//        std::printf("ȡ����pan%x\n",tran);
        pan=192-tran*32/250-1;
    }
    else
    {
//        std::printf("����tran=%x\n",tran);
        pan=tran*63/500+192;
//        std::printf("����pan=%x\n",pan);
    }
    return pan;
}

//panning=+192+pan/(500/64.0);



//������ϵ�Ƶ��ֵ
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
            fprintf(stderr,"û��һ����0x%X��ƥ�������! ����Ϊ: 0x%X",type_time,types[0]);
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
    samplesDataOffset=info.infoDatalen+0x28;//����������������

    std::fseek(g_inputFile,info.infoDatalen,SEEK_CUR);

    sdta_t sdta;
    std::fread(&sdta,1,sizeof(sdta),g_inputFile);
    if(onlyFour(sdta.LISTstr)!="LIST"||onlyFour(sdta.sampleHeadName)!="sdta")
    {
        formatError();
    }
    if(onlyFour(sdta.sampleBitType)=="smpl")
    {
        samplesBitTag = 2;      //������������λ��
    }
    else
    {
        samplesBitTag = 1;
    }
    std::fseek(g_inputFile,sdta.sampleDatalen+0xC,1);//����pdta
    phdrH_t phdrH;
    phdrL_t phdrL;
    std::fread(&phdrH,1,0x8,g_inputFile);
    if(onlyFour(phdrH.phdrStr)!="phdr")
    {

        formatError();
    }
    //������������
    instTotalNum=(phdrH.phdrDataLen /(sizeof(phdrL.presetName)+
    sizeof(phdrL.presetBagNdx)+sizeof(phdrL.bank)+
    sizeof(phdrL.Library)+sizeof(phdrL.preset)+
    sizeof(phdrL.Genre)+sizeof(phdrL.Morphology)))-1;
    std::printf("��������Ϊ: %d\n",instTotalNum);
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
        //�õ�ÿ����������������(�ۼ���ʽ)
        instSampleTotalNum[i]=instL.instBagNdx;
    }
    instSamplesTotalNum=0;
    for(uint16_t i=0;i<instTotalNum;i++)
    {   //����ÿ����������������Ϊ��ȷ��ʽ
        instSampleTotalNum[i]=instSampleTotalNum[i+1]-instSampleTotalNum[i];
        //�õ�ȫ������������������
        instSamplesTotalNum += instSampleTotalNum[i];
    }
    std::printf("��������������Ϊ: %d\n",instSamplesTotalNum);

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
    {   //Ӧ��Polyphone��sf2�ļ����޸�
        if(uint32_t(instSamplesTotalNum-instTotalNum)!=igenH.igenDatalen/44)
        {
            formatError();
        }
        instSamplesTotalNum-=instTotalNum;
        for(uint8_t i =0;i<instTotalNum;i++)
        {
            instSampleTotalNum[i]-=1;
        }
        std::printf("\n����Ѿ���Polyphone�޸�!\n\n����:\n��������������Ϊ: %d\n\n",instSamplesTotalNum);
    }
    igenL_t igenL;
//    int instNum=0;
//    int trad=0;
//    map<uint16_t,uint8_t>::iterator it;
    for(uint8_t i=0;i<instSamplesTotalNum;i++)
    {
        std::fread(&igenL,1,44,g_inputFile);
        instSampleKeyDamageStart[i]=igenL.keyDamage>>16;//����Χʼ����
        instSampleKeyDamageEnd[i]=igenL.keyDamage>>24;//����Χ�ձ���
//        std::printf("%x %x\n",instSampleKeyDamageStart[i],instSampleKeyDamageEnd[i]);
        instSamplePan[i]=NpanToG(igenL.pan);//panֵ����
        instSamplePlayBack[i]=(igenL.loopPlayBack>>16)*16;//playback����
        instSampleKey[i]=igenL.rootKey>>16;//keyֵ����

        instSampleAttack[i]=time_cmp(g_atk_times,igenL.attack_s>>16);//atkֵת������
        instSampleDecay[i]=time_cmp(g_dec_times,igenL.decay_s>>16);//decֵת������
        instSampleSustain[i]=time_cmp(g_sus_times,igenL.sustain_dB>>16);//susֵת������
        instSampleRelease[i]=time_cmp(g_rel_times,igenL.release_s>>16);//relֵת������
//        it=atk_map.find(igenL.attack_s>>16);
//        if(it!=atk_map.end()){
//            instSampleAttack[i]=it->second;
//        }else{
//            fprintf(stderr,"û���ҵ�key: %d ��Ӧ��ֵ",igenL.attack_s>>16);
//            getchar();
//            exit(1);
//        }
//        it=dec_map.find(igenL.decay_s>>16);
//        if(it!=dec_map.end()){
//            instSampleDecay[i]=it->second;
//        }else{
//            fprintf(stderr,"û���ҵ�key: %d ��Ӧ��ֵ",igenL.decay_s>>16);
//            getchar();
//            exit(1);
//        }
//        it=sus_map.find(igenL.sustain_dB>>16);
//        if(it!=sus_map.end()){
//            instSampleSustain[i]=it->second;
//        }else{
//            fprintf(stderr,"û���ҵ�key: %d ��Ӧ��ֵ",igenL.sustain_dB>>16);
//            getchar();
//            exit(1);
//        }
//        it=rel_map.find(igenL.release_s>>16);
//        if(it!=rel_map.end()){
//            instSampleRelease[i]=it->second;
//        }else{
//            fprintf(stderr,"û���ҵ�key: %d ��Ӧ��ֵ",igenL.release_s>>16);
//            getchar();
//            exit(1);
//        }

        instSampleNum[i]=igenL.sampleNum>>16;//��ǰ��������������
//        std::printf("%x %d\n",instSampleNum[i],i);
    }
    if(instSamplesTotalNum*44!=igenH.igenDatalen)
    {
        if(instSamplesTotalNum*44>igenH.igenDatalen)
        {
            formatError();
        }
        //����������
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
    std::printf("\n��ǰsf2�ļ�������������Ϊ: %d\n",samplesTotalNum);
    for(uint8_t i =0;i<samplesTotalNum;i++)
    {
        std::fread(&shdrL,1,46,g_inputFile);
        sampleDataStart[i]=shdrL.sampleDataStart;//����ÿ�����������ݿ�ʼ��
        //���ݳ��Ⱦ��Ǹ��������ݵĿ�ʼ��-������
        sampleDataEnd[i]=shdrL.sampleDataEnd;//����ÿ�����������ݽ�����
        //ѭ�������Ϊ���������ݵĿ�ʼ��-ѭ����
        sampleLoopStart[i]=shdrL.loopStart;//����ÿ��������ѭ����ʼ��
        //���ݿ�ʼ�������ѭ����ʼ��������1,��ѭ��
        sampleLoopEnd[i]=shdrL.loopEnd;//����ÿ��������ѭ��������
        //ѭ���ĳ��Ⱦ���ÿ������ѭ���Ŀ�ʼ��-������
        sampleRootKey[i]=shdrL.originalKey;//����ÿ��������ԭʼ��ֵ
        sampleRate[i]=NRateToG(shdrL.sampleRate,sampleRootKey[i])*4;//����ÿ��������Ƶ��

//        std::printf("ת���������%dƵ��Ϊ: %x\n",i,sampleRate[i]);

    }


}
