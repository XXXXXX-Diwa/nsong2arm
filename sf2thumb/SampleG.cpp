#include "main.h"
#include "defineLabel.h"
#include "readKeyInfo.h"
#include "SampleG.h"
#include "crc32.h"

std::string onlyPath(std::string s)
{
    size_t pos =s.find_last_of('\\');
    if(pos>0&&pos!=std::string::npos)
    {
        s=s.substr(0,pos+1);

    }
    return s;

}

//创建新文件夹
void builFolder(string s)
{

    s=g_program_path+"\\"+s;
    if((access(s.c_str(),F_OK))==-1)//检查文件夹是否存在
    {
        mkdir(s.c_str());
    }
}

void samplesRipper(string inf)
{
    vector<string>().swap(sampleNames);
    builFolder("samples");
    //打开输入文件
    g_inputFile=fopen(inf.c_str(),"rb");
    if(g_inputFile==nullptr)
    {
        std::printf("打开文件: %s失败!\n",onlyFileName(inf).c_str());
    }
    int c;
//    uint8_t Rbit8;
    uint32_t Rbit32;
    char crcChar[8];
    ghead_t ghead;
    std::string temp="samples\\_temp";
    uint8_t* buff=new uint8_t[800000];//申请堆空间
    uint16_t* wbuff=new uint16_t[400000];

    for(uint8_t i=0;i<samplesTotalNum;i++)
    {
//        Rbit8=0;
        memset(&ghead,0,sizeof(ghead));//内存清零
        if(sampleLoopStart[i]-sampleDataStart[i]!=1)
        {
            ghead.loopTag=0x40000000;
        }
//        std::printf("\n当前样本序号为: %d\n",i);

        ghead.gRate=sampleRate[i];
//        std::printf("频率值为: %x\n",ghead.gRate);
        if(ghead.loopTag!=0)
        {
            ghead.loopPoint=sampleLoopStart[i]-sampleDataStart[i];
        }
//        std::printf("循环值为: %d\n",ghead.loopPoint);
        ghead.dataSize=sampleDataEnd[i]-sampleDataStart[i];
//        std::printf("长度为: %X\n",ghead.dataSize);
//        std::printf("\n");
//        std::printf("开始绘制文件头!\n");
        //创建临时二进制文件 允许读写
        g_outputFile=fopen(temp.c_str(),"wb+");
        if(g_outputFile==nullptr)
        {
            std::printf("创建临时文件_temp失败!\n");
            getchar();
            exit(1);
        }
        //绘制头数据
        fwrite(&ghead.loopTag,1,sizeof(ghead.loopTag),g_outputFile);
        fseek(g_outputFile,1,1);
        fwrite(&ghead.gRate,1,3,g_outputFile);
        fwrite(&ghead.loopPoint,1,4,g_outputFile);
        if(ghead.loopTag==0)
        {   //不循环的话
            Rbit32=ghead.dataSize-1;
        }
        else
        {   //循环的话
            Rbit32=ghead.dataSize;
        }
        fwrite(&Rbit32,1,4,g_outputFile);
        //定位到样本数据
        fseek(g_inputFile,samplesDataOffset+sampleDataStart[i]*samplesBitTag,0);

//        std::printf("样本数据开始地址为: %X\n",samplesDataOffset);
//        std::printf("当前样本数据偏移为: %X\n",sampleDataStart[i]);
//        std::printf("当前样本数据坐标为: %X\n",samplesDataOffset+sampleDataStart[i]);
        uint32_t len=0;
        if(samplesBitTag==1){//8bit样本数据
            if(ghead.dataSize<=800000){
                len=fread(buff,ghead.dataSize,1,g_inputFile);
                if(!len){
                    fprintf(stderr,"样本未完全读取,实际长度: %d",ghead.dataSize*2);
                    getchar();
                    exit(1);
                }else{
                    for(uint32_t li=0;li<ghead.dataSize;++li){
                        buff[li]|=0x80;
                    }
                    len=fwrite(buff,ghead.dataSize,1,g_outputFile);
                    if(!len){
                        fputs("样本未完全写入",stderr);
                        getchar();
                        exit(1);
                    }
                }
            }else{
                uint8_t* buffer=new uint8_t[ghead.dataSize];
                len=fread(buffer,ghead.dataSize,1,g_inputFile);
                if(!len){
                    fprintf(stderr,"样本未完全读取,实际长度: %d",ghead.dataSize);
                    getchar();
                    exit(1);
                }else{
                    for(uint32_t li=0;li<ghead.dataSize;++li){
                        buffer[li]|=0x80;
                    }
                    len=fwrite(buffer,ghead.dataSize,1,g_outputFile);
                    if(!len){
                        fprintf(stderr,"样本未完全写入,实际长度: %d",ghead.dataSize);
                        getchar();
                        exit(1);
                    }
                }
                delete []buffer;
                buffer=NULL;
            }
        }else{//16bit样本
            if(ghead.dataSize*2<=800000){
                len=fread(wbuff,ghead.dataSize,2,g_inputFile);
                if(ferror(g_inputFile)){
                    fprintf(stderr,"样本未完全读取,实际长度: %d",ghead.dataSize*2);
                    getchar();
                    exit(1);
                }else{
                    for(uint32_t li=0;li<ghead.dataSize;++li){
                        buff[li]=wbuff[li]>>8;
                    }
                    len=fwrite(buff,ghead.dataSize,1,g_outputFile);
                    if(!len){
                        fprintf(stderr,"样本未完全写入,实际长度: %d",ghead.dataSize);
                        getchar();
                        exit(1);
                    }
                }
            }else{
                uint8_t* buffer=new uint8_t[ghead.dataSize*2];
                uint16_t* wbuffer=new uint16_t[ghead.dataSize];
                len=fread(wbuffer,ghead.dataSize,2,g_inputFile);
                if(ferror(g_inputFile)){
                    fprintf(stderr,"样本未完全读取,实际长度: %d",ghead.dataSize*2);
                    getchar();
                    exit(1);
                }else{
                    for(uint32_t li=0;li<ghead.dataSize;++li){
                        buffer[li]=wbuffer[li]>>8;
                    }
                    len=fwrite(buffer,ghead.dataSize,1,g_outputFile);
                    if(!len){
                        fprintf(stderr,"样本未完全写入,实际长度: %d",ghead.dataSize);
                        getchar();
                        exit(1);
                    }
                }
                delete []buffer;
                delete []wbuffer;
            }

        }

        //加上数据尾
        if(ghead.loopTag==0)
        {
            Rbit32=0;
            fwrite(&Rbit32,1,3,g_outputFile);
        }
        else
        {
            fseek(g_outputFile,ghead.loopPoint+16,0);
            c = fgetc(g_outputFile);
            if(c<0)
            {
                std::printf("读取坐标: %X 异常!\n",ghead.loopPoint+16);
            }
            Rbit32=c;
            fseek(g_outputFile,0,2);
            fwrite(&Rbit32,1,3,g_outputFile);
        }
        fclose(g_outputFile);
        //得到临时文件的crc32循环冗余校验码
        sprintf(crcChar,"%x",crc32Result(temp.c_str()));
        string res=crcChar;
        fill(crcChar,crcChar+8,'\0');
        if(res.length()<8)
        {   //补充可能的'0'头缺失
            int j =res.length();
            for(int k =0;k<8-j;k++)
            {
                crcChar[k]='0';
            }
        }
        res=(string)crcChar + res;
        sampleNames.push_back(res);
        res="samples\\"+res;
        //加上新文件目录
        if(access(res.c_str(),F_OK)==-1)
        {
            //改变临时文件名为crc32名
            rename(&temp[0],&res[0]);
//            std::printf("成功导出样本%d文件: %s\n",i,res.c_str());

        }
        else
        {
            remove(temp.c_str());//有同名文件则删除临时文件也不重命名
//            std::printf("有同名文件!\n");
        }

    }
    delete[]buff;
    delete []wbuff;

    fclose(g_inputFile);
    std::printf("全部样本文件导出完毕!\n");
    g_allSampleNames.push_back(sampleNames);
}

