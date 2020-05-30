#include <cstring>
#include <algorithm>
#include <string>
#include <string.h>
#include <ctype.h>
#include "main.h"
#include "error.h"
#include "ReadData.h"
#include <cstdint>

std::uint32_t g_curTrackReadLen=0;

static uint32_t readInt8()
{
    int c = std::fgetc(g_inputFile);
    if(c < 0)
    {
        RaiseError("不可预料的文件末端!");
    }
    return c;
}

//static uint32_t readInt16()
//{
//    std::uint32_t val=0;
//    val |=readInt8()<<8;
//    val |=readInt8();
//    return val;
//}

//static uint32_t readInt24()
//{
//    std::uint32_t val=0;
//    val |=readInt8()<<16;
//    val |=readInt8()<<8;
//    val |=readInt8();
//    return val;
//}

//static uint32_t readInt32()
//{
//    std::uint32_t val=0;
//    val |=readInt8()<<24;
//    val |=readInt8()<<16;
//    val |=readInt8()<<8;
//    val |=readInt8();
//    return val;
//}

static uint32_t ldrhInt16()
{
    std::uint32_t val=0;
    val =readInt8();
    val |=readInt8()<<8;
    return val;
}

static uint32_t ldrInt32()
{
    std::uint32_t val=0;
    val =ldrhInt16();
    val |=ldrhInt16()<<16;
    return val;
}
static uint32_t Address24()//坐标地址去掉前面的08或09
{
    std::uint32_t val=0;
    val =ldrhInt16();
    val |=readInt8()<<16;
    Skip(1);//保证跳过4个字节
    return val;
}

void Seek(long offset)
{
    if(std::fseek(g_inputFile,offset,SEEK_SET)!=0)
    {
        RaiseError("错误的坐标!%lx\n",offset);
    }
}

void Skip(long offset)
{
    if(std::fseek(g_inputFile,offset,SEEK_CUR)!=0)
    {
        RaiseError("跳转失败!%lx\n",offset+SEEK_CUR);
    }
}

void CheckItsAddress()
{
    Skip(3);
    std::uint32_t ZeroEight=readInt8();
    if(ZeroEight != 8 && ZeroEight !=9)//9为可能的情况
    {
        std::printf("%X\n",ZeroEight);
        RaiseError("不正确的Table地址!%lx\n",g_trackTableAddress);
    }
    Skip(-4);
}

void recordTrackLoopDefine()//去除重复坐标,并从小到大排列作为定义
{
    int t,f,gap;
    uint32_t trackLoopData[g_curTrackLoopTotal];
    memcpy(trackLoopData,g_trackLoopData,sizeof(uint32_t)* g_curTrackLoopTotal);//内存拷贝
    for(gap = g_curTrackLoopTotal/2;gap > 0;gap/=2)//希尔排序
    {
        for(t=gap;t<g_curTrackLoopTotal;t++)
        {
            for(f = t;f-gap >= 0 && trackLoopData[f-gap] > trackLoopData[f];f-=gap)
            {
                std::swap(trackLoopData[f-gap],trackLoopData[f]);
            }
        }
    }
    g_trackLoopDefineTotal=std::unique(trackLoopData,trackLoopData+g_curTrackLoopTotal)-trackLoopData;
    memcpy(g_trackLoopDefine,trackLoopData,sizeof(uint32_t)* g_trackLoopDefineTotal);

}


void recordAddress()
{
    Seek(g_trackTableAddress);
    CheckItsAddress();//检查是否是个坐标地址
    Seek(g_trackTableAddress);
    g_trackHeaderAddress = Address24();//保存Header地址

    g_songGroup=ldrInt32();//保存songgroup数据
    Seek(g_trackHeaderAddress);//跳转到header数据段
    g_TrackTotalNum=ldrhInt16();//音轨数量
    g_TrackUnknow=ldrhInt16();//未知 数据

    g_voiceGroupAddress=Address24();//voiceGroup地址

    for(int i=0;i<g_TrackTotalNum;i++)
    {
        g_trackAddress[i]=Address24();//所有音轨地址都储存
    }

}

void recordTrackLoopData()
{
    while(1)
    {
        int c=std::fgetc(g_inputFile);
        g_curTrackReadLen++;
        if(c<0)
        {
            RaiseError("不可预料的文件末端!");
        }
        else if(c==0xb3 || c == 0xb2)//循环或调用处
        {
            g_trackLoopData[g_trackLoopDataNum]=Address24();
            g_curTrackLoopTotal++;
            g_trackLoopDataNum++;

        }
        else if(c==0xb1)//结束处
        {
            recordTrackLoopDefine();
            g_curTrackReadLen=0;
            g_trackLoopDataNum=0;
            break;
        }

    }

        g_curTrackReadLen=0;//归零

}

