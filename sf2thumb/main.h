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

#endif // MAIN_H_INCLUDED
