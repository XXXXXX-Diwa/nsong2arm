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

vector<vector<string> > g_allSampleNames;//所有从sf2文件中导出的样本
vector<string> sampleNames(0,"");//当前sf2文件中导出的样本

vector<string> g_outTrackFileNames(0,"");
string g_program_path="";
vector<string> g_onlyUseSamples;//voice_group仅调用的样本




int main(int argc,const char** argv)
{
    g_program_path=onlyPath(argv[0]);
    if(argc>=2){
        for(int i=1;i<argc;i++){
            if(access(argv[i],0)==-1){
                fprintf(stderr,"文件: \"%s\" 不存在!\n",argv[i]);
                getchar();
            }else{
                string s=argv[i];
                s=s.substr(s.size()-3);
                if(toupper(s[0])=='S'&&tolower(s[1])=='f'&&s[2]=='2'){
                    g_inputFileName.push_back(argv[i]);//输入文件名
                }else{
                    fprintf(stderr,"文件: \"%s\" 扩展名不对!\n",argv[i]);
                    getchar();
                }
            }
        }
        if(g_inputFileName.size()==0){
            fputs("没有一个有效的文件!",stderr);
            getchar();
            exit(1);
        }
    }else{
        fputs("sf2 samples+voice_groups output tool (C) v1.0 2020/5/31 by XXXXXX-Diwa\n",stderr);
        outFileLabel();//定义输出文件标签/名
    }

    for(uint16_t i=0;i<g_inputFileName.size();i++){
        readKeyInfo(g_inputFileName[i]);//读取文件关键数据
//        try{
            samplesRipper(g_inputFileName[i]);//样本(头绘制,数据切割,尾数据绘制),文件命名
//        }catch(exception &e){
//            fprintf(stderr,"%s",e.what());
//            getchar();
//        }

        drawAsm(g_inputFileName[i]);//绘制voiceGroup数据
    }

    sample_include_file();//样本导入文件

    return 0;
}
