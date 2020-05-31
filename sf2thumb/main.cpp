//#include <iostream>
#include "main.h"
#include "readKeyInfo.h"
#include "defineLabel.h"
#include "SampleG.h"
#include "drawThumb.h"

using namespace std;


FILE* g_inputFile=nullptr;
FILE* g_outputFile=nullptr;

vector<string> g_inputFileName(0,"");
string g_outputFileName="";

vector<vector<string> > g_allSampleNames;//���д�sf2�ļ��е���������
vector<string> sampleNames(0,"");//��ǰsf2�ļ��е���������

vector<string> g_outTrackFileNames(0,"");
string g_program_path="";
vector<string> g_onlyUseSamples;//voice_group�����õ�����




int main(int argc,const char** argv)
{
    g_program_path=onlyPath(argv[0]);
    if(argc>=2){
        for(int i=1;i<argc;i++){
            if(access(argv[i],0)==-1){
                fprintf(stderr,"�ļ�: \"%s\" ������!\n",argv[i]);
                getchar();
            }else{
                string s=argv[i];
                s=s.substr(s.size()-3);
                if(toupper(s[0])=='S'&&tolower(s[1])=='f'&&s[2]=='2'){
                    g_inputFileName.push_back(argv[i]);//�����ļ���
                }else{
                    fprintf(stderr,"�ļ�: \"%s\" ��չ������!\n",argv[i]);
                    getchar();
                }
            }
        }
        if(g_inputFileName.size()==0){
            fputs("û��һ����Ч���ļ�!",stderr);
            getchar();
            exit(1);
        }
    }else{
        fputs("sf2 samples+voice_groups output tool (C) v1.0 2020/5/31 by XXXXXX-Diwa\n",stderr);
        outFileLabel();//��������ļ���ǩ/��
    }

    for(uint16_t i=0;i<g_inputFileName.size();i++){
        readKeyInfo(g_inputFileName[i]);//��ȡ�ļ��ؼ�����
//        try{
            samplesRipper(g_inputFileName[i]);//����(ͷ����,�����и�,β���ݻ���),�ļ�����
//        }catch(exception &e){
//            fprintf(stderr,"%s",e.what());
//            getchar();
//        }

        drawAsm(g_inputFileName[i]);//����voiceGroup����
    }

    sample_include_file();//���������ļ�

    return 0;
}
