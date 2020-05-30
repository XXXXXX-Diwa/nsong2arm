#include <cstring>
#include <string>
#include <string.h>
#include <ctype.h>
#include "main.h"
#include "error.h"
#include "ReadData.h"
#include "WriteASMFile.h"
#include <io.h>

FILE* g_inputFile=nullptr;
FILE* g_outputFile=nullptr;

std::uint32_t g_trackTableAddress=0;
std::uint32_t g_trackHeaderAddress=0;
std::uint32_t g_songGroup=0;
std::uint16_t g_TrackTotalNum=0;
std::uint16_t g_TrackUnknow=0;
std::uint32_t g_voiceGroupAddress=0;
std::uint32_t g_trackAddress[16]={0};
std::uint16_t g_curTrackNum=0;
std::uint32_t g_trackLoopData[200]={0};//���Żᳬ����ô��...
std::uint16_t g_curTrackLoopTotal=0;

std::uint16_t g_trackLoopDataNum=0;
std::uint16_t g_trackLoopDataWriteNum=0;

std::uint32_t g_trackLoopDefine[40]={0};//���Żᳬ����ô��...
std::uint16_t g_trackLoopDefineTotal=0;
std::uint16_t g_curTrackLoopDefineNum=0;
std::string inputFileName="";
std::string outputFileName="";
std::string label="";


static std::string fileLabel(std::string s){
    s=DelExtension(s);
    size_t pos=s.find_last_of('\\');
    if(pos>0&&pos!=std::string::npos){
        return s.substr(pos+1);
    }
    return s;
}

int main(int argc,char* argv[])
{

    if(argc==1 || argc > 4)//����˫���򿪻��������
    {
		fputs("s(binary)file to asm v1.0(21:38 2020/5/30) by: XXXXXX-Diwa\n",stderr);
        fputs("����ר������ת���ĳ���!",stderr);
        std::exit(0);
    }
    inputFileName=argv[1];//�ļ�������
    label=fileLabel(inputFileName);
    size_t pos=inputFileName.rfind("\\srcfiles");
    if(pos>0&&pos!=std::string::npos){
        outputFileName=inputFileName.substr(0,pos);
    }else{
        pos=inputFileName.rfind("\\sfileloop");
        if(pos>0&&pos!=std::string::npos){
            outputFileName=inputFileName.substr(0,pos);
        }else{
            fputs("ת�����ļ�Ӧ����sfileloop�ļ����е�",stderr);
            exit(1);
        }
    }
    std::string folder=outputFileName+"\\trackDataFile";
    outputFileName=outputFileName+"\\trackDataFile\\"+label+".asm";
    mkdir(folder.c_str());

    g_inputFile=std::fopen(inputFileName.c_str(),"rb");
    if(g_inputFile==nullptr)
    {
        RaiseError("�޷����ļ�:%s!\n",inputFileName.c_str());
    }
    recordAddress();//������Ҫ����

    g_outputFile=std::fopen(outputFileName.c_str(),"w");

//    writeAsmFileHeader();//��д����ļ�ͷ
    for(g_curTrackNum = 0;g_curTrackNum<g_TrackTotalNum;g_curTrackNum++)
    {
        Seek(g_trackAddress[g_curTrackNum]);
        recordTrackLoopData();//����ѭ������
        Seek(g_trackAddress[g_curTrackNum]);
        writeTrackData();
    }
    writeAsmFileend();

    fclose(g_inputFile);
    fclose(g_outputFile);
    std::printf("asm�ļ�д�����!");

    return 0;
}
