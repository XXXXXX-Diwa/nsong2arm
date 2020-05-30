#include <cstring>
#include <string>
#include <string.h>
#include <ctype.h>
#include "main.h"
#include "error.h"
#include "ReadData.h"

std::string DelExtension(std::string s)
{
    size_t pos =s.find_last_of('.');
    if(pos>0&&pos!=std::string::npos)
    {
        return s.substr(0,pos);
    }
    return s;
}

//void writeAsmFileHeader()
//{
//    std::fprintf(g_outputFile,".gba\n");
//    std::fprintf(g_outputFile,".open \"zm.gba\",\"track.gba\",0x8000000\n");
//    std::fprintf(g_outputFile,"\n");
//    std::fprintf(g_outputFile,"\n");
//    std::fprintf(g_outputFile,"\n");
//    std::fprintf(g_outputFile,".org 0x%X\t;音轨表地址\n",g_trackTableAddress+0x8000000);
//    std::fprintf(g_outputFile,"\t.dw %s_trackHeaderAddress\t;%X\n",label.c_str(),g_trackHeaderAddress+0x8000000);
//    std::fprintf(g_outputFile,"\t.dw 0x%X\n",g_songGroup);
//    std::fprintf(g_outputFile,"\n");
//    std::fprintf(g_outputFile,"\n");
//    std::fprintf(g_outputFile,".align\n");
//    std::fprintf(g_outputFile,".org 0x8760d38\n");
//}

void writeTrackData()
{
    std::fprintf(g_outputFile,"%s_Track%d:",label.c_str(),g_curTrackNum);
    for(uint32_t d=0;d<0x40000;d++)
    {
        int c = std::fgetc(g_inputFile);
        if(c<0)
        {
            RaiseError("不可预料的文件末端!");
        }
        if(g_trackLoopDefineTotal !=0 && d == g_trackLoopDefine[g_curTrackLoopDefineNum] - g_trackAddress[g_curTrackNum])
        {
            std::fprintf(g_outputFile,"\n%s_Offset0x%02XDefine:\n\t.db 0x%02X\n\t.db ",label.c_str(),g_trackLoopDefine[g_curTrackLoopDefineNum],c);
            g_curTrackLoopDefineNum++;
            g_trackLoopDefineTotal--;//当前音轨的循环定义总数标记减少
            continue;
        }
        else if(c==0xb2 || c==0xb3)
        {

            Skip(4);//跳过3个字节

            if(g_trackLoopDefineTotal !=0 && d == g_trackLoopDefine[g_curTrackLoopDefineNum] - g_trackAddress[g_curTrackNum]-5)
            {
                std::fprintf(g_outputFile,"0x%02X\n\t.dw %s_Offset0x%02XDefine\n",c,label.c_str(),g_trackLoopData[g_trackLoopDataWriteNum]);

            }
            else
            {
                std::fprintf(g_outputFile,"0x%02X\n\t.dw %s_Offset0x%02XDefine\n\t.db ",c,label.c_str(),g_trackLoopData[g_trackLoopDataWriteNum]);

            }
            g_trackLoopDataWriteNum++;
            d+=4;
            continue;

        }
        else if(c==0xb1)
        {
            memset(g_trackLoopData,0,sizeof(uint32_t) * g_curTrackLoopTotal);//清空数组内存
            memset(g_trackLoopDefine,0,sizeof(uint32_t) * g_trackLoopDefineTotal);
            g_curTrackLoopTotal=0;
            g_trackLoopDataWriteNum=0;
            g_curTrackLoopDefineNum=0;
            g_trackLoopDefineTotal=0;
            std::fprintf(g_outputFile,"0x%02X\n\n",c);//最后的0xb1
            break;
        }
        if(d == 0 && g_trackLoopDefine[0] - g_trackAddress[g_curTrackNum]!=0)
        {
            std::fprintf(g_outputFile,"\n\t.db 0x%02X\n\t.db ",c);
            continue;
        }
        else if(d%10 == 0)
        {
             if(g_trackLoopDefineTotal !=0 && d == g_trackLoopDefine[g_curTrackLoopDefineNum] - g_trackAddress[g_curTrackNum]-1)
             {
                 std::fprintf(g_outputFile,"0x%02X\n",c);
                 continue;
             }
            std::fprintf(g_outputFile,"0x%02X\n\t.db ",c);
            continue;
        }
        else
        {
            std::fprintf(g_outputFile,"0x%02X",c);
        }

        if(g_trackLoopDefineTotal !=0 && d == g_trackLoopDefine[g_curTrackLoopDefineNum] - g_trackAddress[g_curTrackNum]-1)
        {
            std::fprintf(g_outputFile,"\n");
            continue;
        }
        std::fprintf(g_outputFile,",");
    }

}

void writeAsmFileend()
{
    std::fprintf(g_outputFile,".align\n");
    std::fprintf(g_outputFile,"%s_trackHeaderAddress:\n",label.c_str());
    std::fprintf(g_outputFile,"\t.dh 0x%02X\n",g_TrackTotalNum);
    std::fprintf(g_outputFile,"\t.dh 0x%02X\n",g_TrackUnknow);
    std::fprintf(g_outputFile,"\t.dw %s_VoiceGroup",label.c_str());
    std::fprintf(g_outputFile,"\t\t\t\t\t;原地址: 0x%02X\n",g_voiceGroupAddress+0x8000000);
    for(int i = 0;i<g_TrackTotalNum;i++)
    {
        std::fprintf(g_outputFile,"\t.dw %s_Track%d\n",label.c_str(),i);
    }
    std::fprintf(g_outputFile,"\n\n\n");
//    std::fprintf(g_outputFile,"\n.close\n");
}
