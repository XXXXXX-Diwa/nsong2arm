#ifndef MAIN_H_INCLUDED
#define MAIN_H_INCLUDED
#include <cstdio>
#include <cstdlib>
#include <stdio.h>
#include <string.h>
#include <string>
#include <cstdint>
#include <conio.h>
#include <vector>
#include <io.h>
#include <ctype.h>
#include <algorithm>
#include <exception>
#include <map>

using namespace std;

typedef struct infolist
{
    char sf2HeadName[4];//RIFF
    uint32_t sf2Datalen;//文件总长度
    char sfbkLIST[8];   //sfbkLIST
    uint32_t infoDatalen;
}info_t;

typedef struct sdtalist //样本数据
{   char LISTstr[4];       //LIST
    uint32_t toPdtalen; //到pdta的长度
    char sampleHeadName[4];//sdta
    char sampleBitType[4];//smpl为16bit sm24为8bit
    uint32_t sampleDatalen;//全部样本的总长度
}sdta_t;

typedef struct phdrHeader
{
    char phdrStr[4];
    uint32_t phdrDataLen;//phdrH数据总长度

}phdrH_t;

typedef struct phdrlist
{
	char presetName[20];//预设名
    uint16_t preset;    //preset号
    uint16_t bank;
    uint16_t presetBagNdx;
    uint32_t Library;
    uint32_t Genre;
    uint32_t Morphology;
}phdrL_t;

typedef struct pbaglist
{
    char pbagStr[4];
    uint32_t pbagDatalen;
    //char pbagData[pbagDatalen];
//    uint16_t GenNdx;
//    uint16_t ModNdx;
}pbag_t;

typedef struct pmodlist
{
    char pmodStr[4];
    uint32_t pmodDatalen;
    //char pmodData[pmodDatalen];
}pmod_t;

typedef struct pgenlist
{
    char pgenStr[4];
    uint32_t pgenDatalen;
    //char pgenData[pgenDatalen];
}pgen_t;

typedef struct instHead
{
    char instStr[4];
    uint32_t instDatalen;

}instH_t;

typedef struct instlist
{
	char instName[20];
    uint16_t instBagNdx;//该音组的样本数,需要减上一个包
}instL_t;

typedef struct ibaglist
{
    char ibagStr[4];
    uint32_t ibagDatalen;
    //char ibagData[ibagDatalen];
}ibag_t;

typedef struct imodlist
{
    char imodStr[4];
    uint32_t imodDatalen;
    //char imodData[imodDatalen];
}imod_t;

typedef struct igenHead
{
    char igenStr[4];
    uint32_t igenDatalen;

}igenH_t;

typedef struct igenlist
{
    uint32_t keyDamage;//键值范围 2B00 aaBB
    uint32_t velocityDamage;//2C00 aaBB
    uint32_t attenuation_dB;//3000 AAAA 0.0
    uint32_t pan;           //1100 AAAA 0.0 有负
    uint32_t loopPlayBack;  //3600 AA 00 0或1
    uint32_t rootKey;       //3A00 AA 00键值
    uint32_t attack_s;      //2200 AAAA 起
    uint32_t decay_s;       //2400 AAAA 衰
    uint32_t sustain_dB;    //2500 AAAA 延
    uint32_t release_s;     //2600 AAAA 消
    uint32_t sampleNum;     //3500 AAAA 样本号
}igenL_t;

typedef struct shdrHead
{
    char shdrStr[4];
    uint32_t shdrDatalen;

}shdrH_t;

typedef struct shdrlist
{
    char sampleName[20];    //样本名
    uint32_t sampleDataStart;//样本数据开始位置
    uint32_t sampleDataEnd;  //结束,若16bit要x2
    uint32_t loopStart;     //循环开始处
    uint32_t loopEnd;
    uint32_t sampleRate;    //频率
    uint8_t originalKey;    //原始键值
    char Correction;        //微校
    uint16_t sampleLink;
    uint16_t sampleType;
}shdrL_t;

typedef struct pdtalist
{
    char LISTstr2[4];//LIST
    uint32_t pdtaDatalen;//到末尾的长度
    char pdtaStr[4];
//    phdrH_t phdrH;
//    pbag_t pbag;
//    pmod_t pmod;
//    pgen_t pgen;
//    inst_t inst;
//    ibag_t ibag;
//    imod_t imod;
//    igen_t igen;
//    shdr_t shdr;
}pdta_t;

extern FILE* g_inputFile;
extern FILE* g_outputFile;
extern vector<string> g_inputFileName;
extern string g_outputFileName;

extern vector<vector<string> > g_allSampleNames;
extern vector<string> sampleNames;
extern vector<string> g_onlyUseSamples;

extern vector<string> g_outTrackFileNames;//所有导出的asm文件名
extern string g_program_path;//程序路径

//extern map<uint16_t,uint8_t> atk_map;
//extern map<uint16_t,uint8_t> dec_map;
//extern map<uint16_t,uint8_t> sus_map;
//extern map<uint16_t,uint8_t> rel_map;

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
};//万恶穷举

#endif // MAIN_H_INCLUDED
