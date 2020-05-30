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
        RaiseError("����Ԥ�ϵ��ļ�ĩ��!");
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
static uint32_t Address24()//�����ַȥ��ǰ���08��09
{
    std::uint32_t val=0;
    val =ldrhInt16();
    val |=readInt8()<<16;
    Skip(1);//��֤����4���ֽ�
    return val;
}

void Seek(long offset)
{
    if(std::fseek(g_inputFile,offset,SEEK_SET)!=0)
    {
        RaiseError("���������!%lx\n",offset);
    }
}

void Skip(long offset)
{
    if(std::fseek(g_inputFile,offset,SEEK_CUR)!=0)
    {
        RaiseError("��תʧ��!%lx\n",offset+SEEK_CUR);
    }
}

void CheckItsAddress()
{
    Skip(3);
    std::uint32_t ZeroEight=readInt8();
    if(ZeroEight != 8 && ZeroEight !=9)//9Ϊ���ܵ����
    {
        std::printf("%X\n",ZeroEight);
        RaiseError("����ȷ��Table��ַ!%lx\n",g_trackTableAddress);
    }
    Skip(-4);
}

void recordTrackLoopDefine()//ȥ���ظ�����,����С����������Ϊ����
{
    int t,f,gap;
    uint32_t trackLoopData[g_curTrackLoopTotal];
    memcpy(trackLoopData,g_trackLoopData,sizeof(uint32_t)* g_curTrackLoopTotal);//�ڴ濽��
    for(gap = g_curTrackLoopTotal/2;gap > 0;gap/=2)//ϣ������
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
    CheckItsAddress();//����Ƿ��Ǹ������ַ
    Seek(g_trackTableAddress);
    g_trackHeaderAddress = Address24();//����Header��ַ

    g_songGroup=ldrInt32();//����songgroup����
    Seek(g_trackHeaderAddress);//��ת��header���ݶ�
    g_TrackTotalNum=ldrhInt16();//��������
    g_TrackUnknow=ldrhInt16();//δ֪ ����

    g_voiceGroupAddress=Address24();//voiceGroup��ַ

    for(int i=0;i<g_TrackTotalNum;i++)
    {
        g_trackAddress[i]=Address24();//���������ַ������
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
            RaiseError("����Ԥ�ϵ��ļ�ĩ��!");
        }
        else if(c==0xb3 || c == 0xb2)//ѭ������ô�
        {
            g_trackLoopData[g_trackLoopDataNum]=Address24();
            g_curTrackLoopTotal++;
            g_trackLoopDataNum++;

        }
        else if(c==0xb1)//������
        {
            recordTrackLoopDefine();
            g_curTrackReadLen=0;
            g_trackLoopDataNum=0;
            break;
        }

    }

        g_curTrackReadLen=0;//����

}

