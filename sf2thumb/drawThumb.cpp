#include "main.h"
#include "SampleG.h"
#include "defineLabel.h"
#include "drawThumb.h"
#include "readKeyInfo.h"
#include <windows.h>

static int dichotomy(vector<string> &s,int left,int right,string cmps){//���ַ�
    while(left<=right){
        int mid=left+(right-left)/2;
        if(s[mid]>cmps){
            right=mid-1;
        }else if(s[mid]<cmps){
            left=mid+1;
        }else{
            return mid;
        }
    }
    return -1;
}

static string nopath(string s)
{
    size_t pos = s.find_last_of('\\');
    if(pos>0&&pos!=string::npos)
    {
        s=s.substr(pos+1);
    }
    return s;
}



void drawAsm(string inf)
{
    string TDFPath=g_program_path+"\\trackDataFile";
    builFolder("trackDataFile");
    string asmFileName,outf;
    if(g_outputFileName==""){
        outf=nopath(inf.substr(0,inf.size()-4));
        asmFileName=TDFPath+"\\"+outf+".asm";
    }else{
        outf=nopath(g_outputFileName);
        asmFileName=TDFPath+"\\"+g_outputFileName+".asm";
    }
//    char header[3] = {0xef, 0xbb, 0xbf};  // UTF-8 �ļ�ͷ
    g_outTrackFileNames.push_back(asmFileName);
    g_outputFile=fopen(asmFileName.c_str(),"at+");//ĩβ׷д
    fprintf(g_outputFile,".align\n");//��ӡ����
    fprintf(g_outputFile,"%s_VoiceGroup:\n",outf.c_str());
    //�����������Ƿ���multisample��drumpart
    bool drum_type[instTotalNum]={};
    uint8_t instSampleNowNum=0;//��¼��ǰ������all�������е�������
    for(uint8_t i =0;i<instTotalNum;i++){//ѭ����������
        drum_type[i]=false;
        if(instSampleTotalNum[i]>1)//������鲻�ǵ�����
        {
            drum_type[i]=true;
            //��鵱ǰ�����Ƿ��ǹĵ�
            for(uint8_t j=0;j<instSampleTotalNum[i];j++){//ѭ�������������
                if(instSampleKeyDamageStart[instSampleNowNum+j]!=
                   instSampleKeyDamageEnd[instSampleNowNum+j]&&
                   instSampleKeyDamageEnd[instSampleNowNum+j]!=
                   instSampleKey[instSampleNowNum+j]){
                        drum_type[i]=false;
                   }
            }
            instSampleNowNum+=instSampleTotalNum[i];
        }else{
            instSampleNowNum++;
        }
    }

    //�ȴ�ӡ��������
    for(uint8_t i =0;i<instTotalNum;i++)//��������ѭ��
    {
        if(i==0&&instVoice[i]>0)
        {
            for(uint8_t k=0;k<instVoice[i];k++)//��ʼ����Ͳ���0����
            {
                fprintf(g_outputFile,"\t.dw 0,0,0\n");
            }

        }//�����ǰ�������֮ǰ������ֵ������1
        else if(instVoice[i]-instVoice[i-1]>1)
        {
            for(uint8_t k=0;k<instVoice[i]-instVoice[i-1]-1;k++)//�����ٴ�ӡ����-1��
            {
                fprintf(g_outputFile,"\t.dw 0,0,0\n");
            }
        }
        if(instSampleTotalNum[i]>1)//�ж�������������Ƿ��Ǹ���
        {
            if(drum_type[i]){
                fprintf(g_outputFile,"\t.dw 0x00000080,%s_Drum%d,0\n",
                    outf.c_str(),i);

            }else{
                fprintf(g_outputFile,"\t.dw 0x00003C40,%s_Multi%d,%s_Range%d\n",
                    outf.c_str(),i,outf.c_str(),i);
            }

        }
        else
        {
            //��ǰ�����������������ȫ�������е��ƺ�
            uint8_t sampleNowInstStart=0;
            for(uint8_t j =0;j<i;j++)
            {
                //�ۼ�֮ǰ�������ƺ�
                sampleNowInstStart+=instSampleTotalNum[j];

            }
//            std::printf("�����ƺ�Ϊ: %d\n",sampleNowInstStart);
//            std::printf("��ǰ�����ĺ�Ϊ: %d\n",instSampleNum[sampleNowInstStart]);
            fprintf(g_outputFile,"\t.dw 0x%02X00%02X%02X,",instSamplePan[sampleNowInstStart],
                    instSampleKey[sampleNowInstStart],instSamplePlayBack[sampleNowInstStart]);
            g_onlyUseSamples.push_back(sampleNames[instSampleNum[sampleNowInstStart]]);
            fprintf(g_outputFile,"crc32label_%s,",g_onlyUseSamples.back().c_str());
            fprintf(g_outputFile,"0x%02X%02X%02X%02X\n",instSampleRelease[sampleNowInstStart],
                    instSampleSustain[sampleNowInstStart],instSampleDecay[sampleNowInstStart],
                    instSampleAttack[sampleNowInstStart]);
        }
    }
    //��voice group����128����ֵ
    for(int i=0;i<128-instTotalNum;i++){
        fputs("\t.dw 0,0,0\n",g_outputFile);
    }

    instSampleNowNum=0;//����
    //�ٴ�ӡ�ǵ����������������
    for(uint8_t i =0;i<instTotalNum;i++)//��������ѭ��
    {
        if(instSampleTotalNum[i]>1)//������鲻�ǵ�����
        {
            if(drum_type[i]){
                fprintf(g_outputFile,".align\n%s_Drum%d:\n",outf.c_str(),i);
                uint8_t base_note_max=instSampleKeyDamageEnd[instSampleNowNum+instSampleTotalNum[i]-1];
//                uint8_t h=instSampleNowNum;
                for(uint8_t j=0;j<=base_note_max;j++){
//                    printf("j=%X,keyDamageEnd=%X,max=%X",j,instSampleKeyDamageEnd[instSampleNowNum],base_note_max);
//                    getchar();
                    if(j==instSampleKeyDamageEnd[instSampleNowNum]){
                        fprintf(g_outputFile,"\t.dw 0x%02X00%02X%02X,",instSamplePan[instSampleNowNum],
                                instSampleKeyDamageEnd[instSampleNowNum],instSamplePlayBack[instSampleNowNum]);\
                        g_onlyUseSamples.push_back(sampleNames[instSampleNum[instSampleNowNum]]);
                        fprintf(g_outputFile,"crc32label_%s,",g_onlyUseSamples.back().c_str());
                        fprintf(g_outputFile,"0x%02X%02X%02X%02X\n",instSampleRelease[instSampleNowNum],
                                instSampleSustain[instSampleNowNum],instSampleDecay[instSampleNowNum],
                                instSampleAttack[instSampleNowNum]);
                        ++instSampleNowNum;

                    }else{
                        fputs("\t.dw 0,0,0\n",g_outputFile);
                    }
                }
            }else{
                fprintf(g_outputFile,".align\n%s_Multi%d:\n",outf.c_str(),i);
                for(uint8_t k=0;k<instSampleTotalNum[i];k++)//ÿ������ѭ��������
                {
                    fprintf(g_outputFile,"\t.dw 0x%02X00%02X%02X,",instSamplePan[instSampleNowNum],
                            instSampleKey[instSampleNowNum],instSamplePlayBack[instSampleNowNum]);
                    g_onlyUseSamples.push_back(sampleNames[instSampleNum[instSampleNowNum]]);
                    fprintf(g_outputFile,"crc32label_%s,",g_onlyUseSamples.back().c_str());
                    fprintf(g_outputFile,"0x%02X%02X%02X%02X\n",instSampleRelease[instSampleNowNum],
                            instSampleSustain[instSampleNowNum],instSampleDecay[instSampleNowNum],
                            instSampleAttack[instSampleNowNum]);
                    ++instSampleNowNum;
                }
            }


        }
        else
        {
            ++instSampleNowNum;//������+1
        }
    }

    //��ʼ��ӡ��Χ
    instSampleNowNum=0;//����
    for(uint8_t i =0;i<instTotalNum;i++)//������������ѭ��
    {
        if(instSampleTotalNum[i]==1)//����ǵ���������
        {
            instSampleNowNum++; //�������+1
            continue;//������һ������
        }else if(drum_type[i]){
            instSampleNowNum+=instSampleTotalNum[i];
            continue;
        }
//      �ǵ������������ӡ����ͷ
        fprintf(g_outputFile,".align\n%s_Range%d:\n\t.db ",outf.c_str(),i);
        uint8_t k=0;
        for(uint8_t keyNum=0;keyNum<128;keyNum++)//128����ѭ��
        {

//            if(keyNum>=instSampleKeyDamageStart[instSampleNowNum]
//            &&keyNum<=instSampleKeyDamageEnd[instSampleNowNum])
//            {
                //��ǰ���������������ѭ��//keyNum�Ƿ��ڵ�ǰ�����ļ�ֵ��Χ��
                for(;k<instSampleTotalNum[i]&&keyNum>=instSampleKeyDamageStart[instSampleNowNum]
                    &&keyNum<=instSampleKeyDamageEnd[instSampleNowNum];k++)
                {
//                fprintf(g_outputFile,"keynum��ֵΪ: %d\n",keyNum);
//                fprintf(g_outputFile,"��ǰ�����ļ�ֵ��Χ��ʼֵΪ: %d\n",instSampleKeyDamageStart[instSampleNowNum]);

//                {
                    //��ӡ����Ϊ��ǰ�����ļ�ֵ��Χ����

                    for(uint8_t j=0;j<=instSampleKeyDamageEnd[instSampleNowNum]
                        -instSampleKeyDamageStart[instSampleNowNum];j++)
                    {

                        fprintf(g_outputFile,"0x%02X",k);//��ӡ�����ڱ���������

                        if((keyNum+1)%10==0)
                        {
                            fprintf(g_outputFile,"\n\t.db ");
                        }
                        else
                        {
                            if(keyNum<127)//����Ϊ���ÿ������key��Χ����һ������
                            {
                                fprintf(g_outputFile,",");
                            }

                        }
                        keyNum++;//��Χ��ź���

                    }

//                }
                instSampleNowNum++;//��ǰ���������+1
                }

                if(keyNum==128)//���ý���������һ�����鷶Χ��0xFF
                {
                    fprintf(g_outputFile,"\n");
                    break;
                }
                fprintf(g_outputFile,"0xFF");
                if(keyNum!=0&&(keyNum+1)%10==0)
                {
                    fprintf(g_outputFile,"\n\t.db ");
                }
                else
                {
                    if(keyNum<127)//����Ϊ���ÿ������key��Χ����һ������
                    {
                        fprintf(g_outputFile,",");
                    }

                }
//            }

        }

//        instSampleNowNum=keyDamaPf(i,instSampleNowNum);
        fprintf(g_outputFile,"\n");

    }

    sampleNames.clear();
    fclose(g_outputFile);
}

void sample_include_file(){
//    printf("%s\n",g_outputFileName.c_str());
//    printf("%s",g_inputFileName[0].c_str());
//    getchar();
    //��ӡ��������
    int samplenum =0 ;
    //��ȡ��ǰϵͳʱ��
    SYSTEMTIME sys;
    GetLocalTime(&sys);
    string mainame=
    to_string(sys.wYear)+"_"+to_string(sys.wMonth)+"_"+to_string(sys.wDay)+
    "_"+to_string(sys.wHour)+"_"+to_string(sys.wMinute)+"_"+
    to_string(sys.wSecond)+"_main.asm";
    g_outputFile=fopen(mainame.c_str(),"w");
    fputs(".gba\n.open \"zm.gba\",\"addtrack.gba\",0x8000000\n\n",g_outputFile);
    fputs(".definelabel tableOffset,0x808f2c8   ;����rom�ĸ���table��ַ\n",g_outputFile);
    fputs(".definelabel freeSpace,0x8760d38 ;�������û�հ����ݵ�ַ\n\n",g_outputFile);
    uint16_t n=g_outTrackFileNames.size()*8;


    for(uint16_t i=0;i<n;i+=8){
        fprintf(g_outputFile,".org tableOffset + %d\n\t.word %s_trackHeaderAddress,0\t;��%02d��\n\n",
                i,onlyFileName(g_outTrackFileNames[i/8]).c_str(),i/8+1);

    }
    fputs(".org freeSpace\n.align\n",g_outputFile);
    n/=8;
    for(uint16_t i=0;i<n;++i){
        fprintf(g_outputFile,".include \"trackDataFile\\%s.asm\"\n\n",onlyFileName(g_outTrackFileNames[i]).c_str());
    }
    fputs(".align\n",g_outputFile);

    sort(g_onlyUseSamples.begin(),g_onlyUseSamples.end());//�Խ���ʹ�õ���������
    //ȥ������ʹ�õ������е��ظ�������
    g_onlyUseSamples.erase(unique(g_onlyUseSamples.begin(),g_onlyUseSamples.end()),g_onlyUseSamples.end());

    vector<string> sstr;
    for(uint16_t i=0;i<n;i++){//��������ѭ��
        vector<string> testr;//���ڼ�¼�Ѿ���ӡ������
        vector<string> cur_only;//���ڼ�¼��ǰsf2�������õ�����
        fprintf(g_outputFile,";%s.sf2����������-----------------------------\n",
                onlyFileName(g_inputFileName[i]).c_str());
        sort(g_allSampleNames[i].begin(),g_allSampleNames[i].end());//��ÿ��sf2�õ�����������
        //ȥ��ÿ��sf2���ظ�������
        g_allSampleNames[i].erase(unique(g_allSampleNames[i].begin(),g_allSampleNames[i].end()),g_allSampleNames[i].end());

        for(uint16_t j=0;j<g_allSampleNames[i].size();j++){//ÿ��sf2��������ѭ��
            if(dichotomy(g_onlyUseSamples,0,g_onlyUseSamples.size()-1,g_allSampleNames[i][j])==-1){
                //���õ�������û����ͬ
                string rm="samples\\"+g_allSampleNames[i][j];
                if(access(rm.c_str(),0)!=-1){//������ڵĻ�
                    remove(rm.c_str());//ɾ��
                }
            }else{
                cur_only.push_back(g_allSampleNames[i][j]);
            }
        }

        for(uint16_t j=0;j<cur_only.size();j++){//ÿ��sf2��������ѭ��

            if(sstr.size()!=0&&dichotomy(sstr,0,sstr.size()-1,cur_only[j])!=-1){
                fprintf(g_outputFile,"\n;crc32label_%s:\t\t\t\n",cur_only[j].c_str());
                fprintf(g_outputFile,";.import \"%s\"\n\n",cur_only[j].c_str());
            }else{
                fprintf(g_outputFile,"crc32label_%s:\t\t\t",cur_only[j].c_str());
                fprintf(g_outputFile,";samples %d\n",samplenum);
                fprintf(g_outputFile,".import \"samples\\%s\"\n",cur_only[j].c_str());
                testr.push_back(cur_only[j]);//��¼�Ѿ���ӡ��
                samplenum++;
            }
        }
        fputs("\n",g_outputFile);
        sstr.assign(testr.begin(),testr.end());
        sort(sstr.begin(),sstr.end());
    }
    fputs(".close",g_outputFile);
    fputs("main.asm�ļ��������!\n",stdout);
    fclose(g_outputFile);
}
