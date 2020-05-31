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

//�������ļ���
void builFolder(string s)
{

    s=g_program_path+"\\"+s;
    if((access(s.c_str(),F_OK))==-1)//����ļ����Ƿ����
    {
        mkdir(s.c_str());
    }
}

void samplesRipper(string inf)
{
    vector<string>().swap(sampleNames);
    builFolder("samples");
    //�������ļ�
    g_inputFile=fopen(inf.c_str(),"rb");
    if(g_inputFile==nullptr)
    {
        std::printf("���ļ�: %sʧ��!\n",onlyFileName(inf).c_str());
    }
    int c;
//    uint8_t Rbit8;
    uint32_t Rbit32;
    char crcChar[8];
    ghead_t ghead;
    std::string temp="samples\\_temp";
    uint8_t* buff=new uint8_t[800000];//����ѿռ�
    uint16_t* wbuff=new uint16_t[400000];

    for(uint8_t i=0;i<samplesTotalNum;i++)
    {
//        Rbit8=0;
        memset(&ghead,0,sizeof(ghead));//�ڴ�����
        if(sampleLoopStart[i]-sampleDataStart[i]!=1)
        {
            ghead.loopTag=0x40000000;
        }
//        std::printf("\n��ǰ�������Ϊ: %d\n",i);

        ghead.gRate=sampleRate[i];
//        std::printf("Ƶ��ֵΪ: %x\n",ghead.gRate);
        if(ghead.loopTag!=0)
        {
            ghead.loopPoint=sampleLoopStart[i]-sampleDataStart[i];
        }
//        std::printf("ѭ��ֵΪ: %d\n",ghead.loopPoint);
        ghead.dataSize=sampleDataEnd[i]-sampleDataStart[i];
//        std::printf("����Ϊ: %X\n",ghead.dataSize);
//        std::printf("\n");
//        std::printf("��ʼ�����ļ�ͷ!\n");
        //������ʱ�������ļ� �����д
        g_outputFile=fopen(temp.c_str(),"wb+");
        if(g_outputFile==nullptr)
        {
            std::printf("������ʱ�ļ�_tempʧ��!\n");
            getchar();
            exit(1);
        }
        //����ͷ����
        fwrite(&ghead.loopTag,1,sizeof(ghead.loopTag),g_outputFile);
        fseek(g_outputFile,1,1);
        fwrite(&ghead.gRate,1,3,g_outputFile);
        fwrite(&ghead.loopPoint,1,4,g_outputFile);
        if(ghead.loopTag==0)
        {   //��ѭ���Ļ�
            Rbit32=ghead.dataSize-1;
        }
        else
        {   //ѭ���Ļ�
            Rbit32=ghead.dataSize;
        }
        fwrite(&Rbit32,1,4,g_outputFile);
        //��λ����������
        fseek(g_inputFile,samplesDataOffset+sampleDataStart[i]*samplesBitTag,0);

//        std::printf("�������ݿ�ʼ��ַΪ: %X\n",samplesDataOffset);
//        std::printf("��ǰ��������ƫ��Ϊ: %X\n",sampleDataStart[i]);
//        std::printf("��ǰ������������Ϊ: %X\n",samplesDataOffset+sampleDataStart[i]);
        uint32_t len=0;
        if(samplesBitTag==1){//8bit��������
            if(ghead.dataSize<=800000){
                len=fread(buff,ghead.dataSize,1,g_inputFile);
                if(!len){
                    fprintf(stderr,"����δ��ȫ��ȡ,ʵ�ʳ���: %d",ghead.dataSize*2);
                    getchar();
                    exit(1);
                }else{
                    for(uint32_t li=0;li<ghead.dataSize;++li){
                        buff[li]|=0x80;
                    }
                    len=fwrite(buff,ghead.dataSize,1,g_outputFile);
                    if(!len){
                        fputs("����δ��ȫд��",stderr);
                        getchar();
                        exit(1);
                    }
                }
            }else{
                uint8_t* buffer=new uint8_t[ghead.dataSize];
                len=fread(buffer,ghead.dataSize,1,g_inputFile);
                if(!len){
                    fprintf(stderr,"����δ��ȫ��ȡ,ʵ�ʳ���: %d",ghead.dataSize);
                    getchar();
                    exit(1);
                }else{
                    for(uint32_t li=0;li<ghead.dataSize;++li){
                        buffer[li]|=0x80;
                    }
                    len=fwrite(buffer,ghead.dataSize,1,g_outputFile);
                    if(!len){
                        fprintf(stderr,"����δ��ȫд��,ʵ�ʳ���: %d",ghead.dataSize);
                        getchar();
                        exit(1);
                    }
                }
                delete []buffer;
                buffer=NULL;
            }
        }else{//16bit����
            if(ghead.dataSize*2<=800000){
                len=fread(wbuff,ghead.dataSize,2,g_inputFile);
                if(ferror(g_inputFile)){
                    fprintf(stderr,"����δ��ȫ��ȡ,ʵ�ʳ���: %d",ghead.dataSize*2);
                    getchar();
                    exit(1);
                }else{
                    for(uint32_t li=0;li<ghead.dataSize;++li){
                        buff[li]=wbuff[li]>>8;
                    }
                    len=fwrite(buff,ghead.dataSize,1,g_outputFile);
                    if(!len){
                        fprintf(stderr,"����δ��ȫд��,ʵ�ʳ���: %d",ghead.dataSize);
                        getchar();
                        exit(1);
                    }
                }
            }else{
                uint8_t* buffer=new uint8_t[ghead.dataSize*2];
                uint16_t* wbuffer=new uint16_t[ghead.dataSize];
                len=fread(wbuffer,ghead.dataSize,2,g_inputFile);
                if(ferror(g_inputFile)){
                    fprintf(stderr,"����δ��ȫ��ȡ,ʵ�ʳ���: %d",ghead.dataSize*2);
                    getchar();
                    exit(1);
                }else{
                    for(uint32_t li=0;li<ghead.dataSize;++li){
                        buffer[li]=wbuffer[li]>>8;
                    }
                    len=fwrite(buffer,ghead.dataSize,1,g_outputFile);
                    if(!len){
                        fprintf(stderr,"����δ��ȫд��,ʵ�ʳ���: %d",ghead.dataSize);
                        getchar();
                        exit(1);
                    }
                }
                delete []buffer;
                delete []wbuffer;
            }

        }

        //��������β
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
                std::printf("��ȡ����: %X �쳣!\n",ghead.loopPoint+16);
            }
            Rbit32=c;
            fseek(g_outputFile,0,2);
            fwrite(&Rbit32,1,3,g_outputFile);
        }
        fclose(g_outputFile);
        //�õ���ʱ�ļ���crc32ѭ������У����
        sprintf(crcChar,"%x",crc32Result(temp.c_str()));
        string res=crcChar;
        fill(crcChar,crcChar+8,'\0');
        if(res.length()<8)
        {   //������ܵ�'0'ͷȱʧ
            int j =res.length();
            for(int k =0;k<8-j;k++)
            {
                crcChar[k]='0';
            }
        }
        res=(string)crcChar + res;
        sampleNames.push_back(res);
        res="samples\\"+res;
        //�������ļ�Ŀ¼
        if(access(res.c_str(),F_OK)==-1)
        {
            //�ı���ʱ�ļ���Ϊcrc32��
            rename(&temp[0],&res[0]);
//            std::printf("�ɹ���������%d�ļ�: %s\n",i,res.c_str());

        }
        else
        {
            remove(temp.c_str());//��ͬ���ļ���ɾ����ʱ�ļ�Ҳ��������
//            std::printf("��ͬ���ļ�!\n");
        }

    }
    delete[]buff;
    delete []wbuff;

    fclose(g_inputFile);
    std::printf("ȫ�������ļ��������!\n");
    g_allSampleNames.push_back(sampleNames);
}

