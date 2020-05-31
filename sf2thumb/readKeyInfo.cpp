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

static const uint16_t g_atk_times[]{
    0xe8f,
    0xa8d,
    0x82a,
    0x676,
    0x521,
    0x406,
    0x316,
    0x24e,
    0x191,
    0xec,
    0x58,
    0xffc9,
    0xff4c,
    0xfeda,
    0xfe6c,
    0xfe0e,
    0xfdab,
    0xfd50,
    0xfcfe,
    0xfc98,
    0xfc5b,
    0xfbfc,
    0xfbb9,
    0xfb74,
    0xfb2c,
    0xfaf3,
    0xfaa6,
    0xfa7d,
    0xfa2a,
    0xf9ff,
    0xf9d2,
    0xf9a5,
    0xf95e,
    0xf92d,
    0xf8fb,
    0xf8c7,
    0xf892,
    0xf877,
    0xf83f,
    0xf822,
    0xf7e8,
    0xf7ca,
    0xf7ab,
    0xf76c,
    0xf74c,
    0xf72b,
    0xf709,
    0xf6e7,
    0xf6c4,
    0xf6a0,
    0xf67c,
    0xf656,
    0xf630,
    0xf609,
    0xf5e2,
    0xf5b9,
    0xf5b9,
    0xf58f,
    0xf564,
    0xf564,
    0xf539,
    0xf539,
    0xf50c,
    0xf50c,
    0xf4ae,
    0xf4ae,
    0xf47d,
    0xf47d,
    0xf44b,
    0xf44b,
    0xf417,
    0xf417,
    0xf3e2,
    0xf3e2,
    0xf3ab,
    0xf3ab,
    0xf372,
    0xf372,
    0xf338,
    0xf338,
    0xf338,
    0xf338,
    0xf2fb,
    0xf2fb,
    0xf2fb,
    0xf27b,
    0xf27b,
    0xf27b,
    0xf237,
    0xf237,
    0xf237,
    0xf237,
    0xf1f0,
    0xf1f0,
    0xf1f0,
    0xf1a6,
    0xf1a6,
    0xf1a6,
    0xf1a6,
    0xf159,
    0xf159,
    0xf159,
    0xf159,
    0xf159,
    0xf109,
    0xf109,
    0xf109,
    0xf109,
    0xf0b4,
    0xf05c,
    0xeffe,
    0xef9b,
    0xef32,
    0xeec2,
    0xee4b,
    0xedcb,
    0xed40,
    0xeca9,
    0xec04,
    0xeb4e,
    0xea82,
    0xe99b,
    0xe890,
    0xe754,
    0xe5d2,
    0xe3e0,
    0xe3e0,
    0xdc72,
};

static const uint16_t g_dec_times[]{
    0x29c7,
    0x225a,
    0x1ee5,
    0x1c9f,
    0x1aeb,
    0x1990,
    0x186f,
    0x1777,
    0x169e,
    0x15de,
    0x1530,
    0x1493,
    0x1402,
    0x137d,
    0x1302,
    0x128e,
    0x1222,
    0x11bc,
    0x115c,
    0x1100,
    0x10aa,
    0x1058,
    0x1009,
    0xfbe,
    0xf75,
    0xf30,
    0xeee,
    0xead,
    0xe6f,
    0xe34,
    0xdfa,
    0xdc2,
    0xd8c,
    0xd58,
    0xd25,
    0xcf3,
    0xcc3,
    0xc94,
    0xc66,
    0xc3a,
    0xc0f,
    0xbe4,
    0xbbb,
    0xb93,
    0xb6b,
    0xb44,
    0xb20,
    0xafb,
    0xad7,
    0xab3,
    0xa91,
    0xa80,
    0xa6f,
    0xa4e,
    0xa3e,
    0xa1c,
    0xa0e,
    0x9ed,
    0x9de,
    0x9be,
    0x9a0,
    0x984,
    0x967,
    0x957,
    0x93c,
    0x920,
    0x8f7,
    0x8da,
    0x8c2,
    0x8a7,
    0x881,
    0x867,
    0x842,
    0x82a,
    0x806,
    0x7e2,
    0x7c0,
    0x7a0,
    0x774,
    0x753,
    0x734,
    0x70b,
    0x6e1,
    0x6ba,
    0x694,
    0x664,
    0x63a,
    0x615,
    0x5e1,
    0x5b7,
    0x584,
    0x553,
    0x526,
    0x4ee,
    0x4b5,
    0x482,
    0x445,
    0x40f,
    0x3ce,
    0x38f,
    0x34e,
    0x30a,
    0x2c4,
    0x27b,
    0x22e,
    0x1de,
    0x18a,
    0x131,
    0xd4,
    0x71,
    0x0,
    0xff90,
    0xff19,
    0xfe99,
    0xfe0e,
    0xfd77,
    0xfcd2,
    0xfc1c,
    0xfb50,
    0xfa69,
    0xf95e,
    0xf822,
    0xf6a0,
    0xf4ae,
    0xf1f0,
    0xed40,
    0xe890,
    0xd149,
};

static const uint16_t g_sus_times[]{
    0x3e8,
    0x23b,
    0x1ff,
    0xc8,
    0x9a,
    0x82,
    0x72,
    0x67,
    0x5e,
    0x57,
    0x52,
    0x4c,
    0x48,
    0x44,
    0x41,
    0x3e,
    0x3b,
    0x39,
    0x36,
    0x34,
    0x32,
    0x31,
    0x2f,
    0x2d,
    0x2c,
    0x2a,
    0x29,
    0x28,
    0x27,
    0x26,
    0x25,
    0x23,
    0x22,
    0x21,
    0x21,
    0x20,
    0x1f,
    0x1e,
    0x1d,
    0x1c,
    0x1c,
    0x1b,
    0x1a,
    0x1a,
    0x19,
    0x18,
    0x18,
    0x17,
    0x17,
    0x16,
    0x16,
    0x15,
    0x14,
    0x14,
    0x14,
    0x13,
    0x12,
    0x12,
    0x12,
    0x11,
    0x11,
    0x10,
    0x10,
    0x10,
    0xf,
    0xf,
    0xe,
    0xe,
    0xe,
    0xd,
    0xd,
    0xd,
    0xc,
    0xc,
    0xc,
    0xb,
    0xb,
    0xb,
    0xa,
    0xa,
    0xa,
    0x9,
    0x9,
    0x9,
    0x9,
    0x8,
    0x8,
    0x8,
    0x8,
    0x7,
    0x7,
    0x7,
    0x7,
    0x6,
    0x6,
    0x6,
    0x6,
    0x5,
    0x5,
    0x5,
    0x5,
    0x4,
    0x4,
    0x4,
    0x4,
    0x4,
    0x3,
    0x3,
    0x3,
    0x3,
    0x3,
    0x2,
    0x2,
    0x2,
    0x2,
    0x2,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
};

static const uint16_t g_rel_times[]{
    0x29c7,
    0x225a,
    0x1ee5,
    0x1c9f,
    0x1aeb,
    0x1990,
    0x186f,
    0x1777,
    0x169e,
    0x15de,
    0x1530,
    0x1493,
    0x1402,
    0x137d,
    0x1302,
    0x128e,
    0x1222,
    0x11bc,
    0x115c,
    0x1100,
    0x10aa,
    0x1058,
    0x1009,
    0xfbe,
    0xf75,
    0xf30,
    0xeee,
    0xead,
    0xe6f,
    0xe34,
    0xdfa,
    0xdc2,
    0xd8c,
    0xd58,
    0xd25,
    0xcf3,
    0xcc3,
    0xc94,
    0xc66,
    0xc3a,
    0xc0f,
    0xbe4,
    0xbbb,
    0xb93,
    0xb6b,
    0xb44,
    0xb20,
    0xafb,
    0xad7,
    0xab3,
    0xa91,
    0xa80,
    0xa6f,
    0xa4e,
    0xa3e,
    0xa1c,
    0xa0e,
    0x9ed,
    0x9de,
    0x9be,
    0x9a0,
    0x984,
    0x967,
    0x957,
    0x93c,
    0x920,
    0x8f7,
    0x8da,
    0x8c2,
    0x8a7,
    0x881,
    0x867,
    0x842,
    0x82a,
    0x806,
    0x7e2,
    0x7c0,
    0x7a0,
    0x774,
    0x753,
    0x734,
    0x70b,
    0x6e1,
    0x6ba,
    0x694,
    0x664,
    0x63a,
    0x615,
    0x5e1,
    0x5b7,
    0x584,
    0x553,
    0x526,
    0x4ee,
    0x4b5,
    0x482,
    0x445,
    0x40f,
    0x3ce,
    0x38f,
    0x34e,
    0x30a,
    0x2c4,
    0x27b,
    0x22e,
    0x1de,
    0x18a,
    0x131,
    0xd4,
    0x71,
    0x0,
    0xff90,
    0xff19,
    0xfe99,
    0xfe0e,
    0xfd77,
    0xfcd2,
    0xfc1c,
    0xfb50,
    0xfa69,
    0xf95e,
    0xf822,
    0xf6a0,
    0xf4ae,
    0xf1f0,
    0xed40,
    0xe890,
    0x0,
};//������

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
