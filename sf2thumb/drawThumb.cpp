#include "main.h"
#include "SampleG.h"
#include "defineLabel.h"
#include "drawThumb.h"
#include "readKeyInfo.h"
#include <windows.h>

static int dichotomy(vector<string> &s,int left,int right,string cmps){//二分法
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
//    char header[3] = {0xef, 0xbb, 0xbf};  // UTF-8 文件头
    g_outTrackFileNames.push_back(asmFileName);
    g_outputFile=fopen(asmFileName.c_str(),"at+");//末尾追写
    fprintf(g_outputFile,".align\n");//打印对齐
    fprintf(g_outputFile,"%s_VoiceGroup:\n",outf.c_str());
    //先区分音组是否是multisample和drumpart
    bool drum_type[instTotalNum]={};
    uint8_t instSampleNowNum=0;//记录当前样本在all样本组中的样本号
    for(uint8_t i =0;i<instTotalNum;i++){//循环音组数次
        drum_type[i]=false;
        if(instSampleTotalNum[i]>1)//如果音组不是单样本
        {
            drum_type[i]=true;
            //检查当前音组是否都是鼓点
            for(uint8_t j=0;j<instSampleTotalNum[i];j++){//循环音组的样本次
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

    //先打印音组主体
    for(uint8_t i =0;i<instTotalNum;i++)//音组数次循环
    {
        if(i==0&&instVoice[i]>0)
        {
            for(uint8_t k=0;k<instVoice[i];k++)//起始如果就不是0音轨
            {
                fprintf(g_outputFile,"\t.dw 0,0,0\n");
            }

        }//如果当前的音轨和之前的音轨值相差大于1
        else if(instVoice[i]-instVoice[i-1]>1)
        {
            for(uint8_t k=0;k<instVoice[i]-instVoice[i-1]-1;k++)//相差多少打印多少-1行
            {
                fprintf(g_outputFile,"\t.dw 0,0,0\n");
            }
        }
        if(instSampleTotalNum[i]>1)//判断音组的样本数是否是复数
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
            //当前单样本音组的样本在全部音组中的牌号
            uint8_t sampleNowInstStart=0;
            for(uint8_t j =0;j<i;j++)
            {
                //累计之前的音组牌号
                sampleNowInstStart+=instSampleTotalNum[j];

            }
//            std::printf("音组牌号为: %d\n",sampleNowInstStart);
//            std::printf("当前样本的号为: %d\n",instSampleNum[sampleNowInstStart]);
            fprintf(g_outputFile,"\t.dw 0x%02X00%02X%02X,",instSamplePan[sampleNowInstStart],
                    instSampleKey[sampleNowInstStart],instSamplePlayBack[sampleNowInstStart]);
            g_onlyUseSamples.push_back(sampleNames[instSampleNum[sampleNowInstStart]]);
            fprintf(g_outputFile,"crc32label_%s,",g_onlyUseSamples.back().c_str());
            fprintf(g_outputFile,"0x%02X%02X%02X%02X\n",instSampleRelease[sampleNowInstStart],
                    instSampleSustain[sampleNowInstStart],instSampleDecay[sampleNowInstStart],
                    instSampleAttack[sampleNowInstStart]);
        }
    }
    //主voice group补齐128个键值
    for(int i=0;i<128-instTotalNum;i++){
        fputs("\t.dw 0,0,0\n",g_outputFile);
    }

    instSampleNowNum=0;//归零
    //再打印非单数样本音组的样本
    for(uint8_t i =0;i<instTotalNum;i++)//音组数次循环
    {
        if(instSampleTotalNum[i]>1)//如果音组不是单样本
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
                for(uint8_t k=0;k<instSampleTotalNum[i];k++)//每个音组循环样本次
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
            ++instSampleNowNum;//单样本+1
        }
    }

    //开始打印范围
    instSampleNowNum=0;//归零
    for(uint8_t i =0;i<instTotalNum;i++)//音组总数次数循环
    {
        if(instSampleTotalNum[i]==1)//如果是单样本音组
        {
            instSampleNowNum++; //样本序号+1
            continue;//进行下一个音组
        }else if(drum_type[i]){
            instSampleNowNum+=instSampleTotalNum[i];
            continue;
        }
//      非单样本音组则打印标题头
        fprintf(g_outputFile,".align\n%s_Range%d:\n\t.db ",outf.c_str(),i);
        uint8_t k=0;
        for(uint8_t keyNum=0;keyNum<128;keyNum++)//128键的循环
        {

//            if(keyNum>=instSampleKeyDamageStart[instSampleNowNum]
//            &&keyNum<=instSampleKeyDamageEnd[instSampleNowNum])
//            {
                //当前音组中样本以序号循环//keyNum是否在当前样本的键值范围中
                for(;k<instSampleTotalNum[i]&&keyNum>=instSampleKeyDamageStart[instSampleNowNum]
                    &&keyNum<=instSampleKeyDamageEnd[instSampleNowNum];k++)
                {
//                fprintf(g_outputFile,"keynum的值为: %d\n",keyNum);
//                fprintf(g_outputFile,"当前样本的键值范围开始值为: %d\n",instSampleKeyDamageStart[instSampleNowNum]);

//                {
                    //打印次数为当前样本的键值范围长度

                    for(uint8_t j=0;j<=instSampleKeyDamageEnd[instSampleNowNum]
                        -instSampleKeyDamageStart[instSampleNowNum];j++)
                    {

                        fprintf(g_outputFile,"0x%02X",k);//打印样本在本音组的序号

                        if((keyNum+1)%10==0)
                        {
                            fprintf(g_outputFile,"\n\t.db ");
                        }
                        else
                        {
                            if(keyNum<127)//作用为清除每个音组key范围最后的一个逗号
                            {
                                fprintf(g_outputFile,",");
                            }

                        }
                        keyNum++;//范围序号后移

                    }

//                }
                instSampleNowNum++;//当前样本总序号+1
                }

                if(keyNum==128)//作用仅仅清除最后一个音组范围的0xFF
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
                    if(keyNum<127)//作用为清除每个音组key范围最后的一个逗号
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
    //打印样本导入
    int samplenum =0 ;
    //获取当前系统时间
    SYSTEMTIME sys;
    GetLocalTime(&sys);
    string mainame=
    to_string(sys.wYear)+"_"+to_string(sys.wMonth)+"_"+to_string(sys.wDay)+
    "_"+to_string(sys.wHour)+"_"+to_string(sys.wMinute)+"_"+
    to_string(sys.wSecond)+"_main.asm";
    g_outputFile=fopen(mainame.c_str(),"w");
    fputs(".gba\n.open \"zm.gba\",\"addtrack.gba\",0x8000000\n\n",g_outputFile);
    fputs(".definelabel tableOffset,0x808f2c8   ;输入rom的歌曲table地址\n",g_outputFile);
    fputs(".definelabel freeSpace,0x8760d38 ;输入无用或空白数据地址\n\n",g_outputFile);
    uint16_t n=g_outTrackFileNames.size()*8;


    for(uint16_t i=0;i<n;i+=8){
        fprintf(g_outputFile,".org tableOffset + %d\n\t.word %s_trackHeaderAddress,0\t;第%02d首\n\n",
                i,onlyFileName(g_outTrackFileNames[i/8]).c_str(),i/8+1);

    }
    fputs(".org freeSpace\n.align\n",g_outputFile);
    n/=8;
    for(uint16_t i=0;i<n;++i){
        fprintf(g_outputFile,".include \"trackDataFile\\%s.asm\"\n\n",onlyFileName(g_outTrackFileNames[i]).c_str());
    }
    fputs(".align\n",g_outputFile);

    sort(g_onlyUseSamples.begin(),g_onlyUseSamples.end());//对仅仅使用的样本排序
    //去除仅仅使用的样本中的重复的样本
    g_onlyUseSamples.erase(unique(g_onlyUseSamples.begin(),g_onlyUseSamples.end()),g_onlyUseSamples.end());

    vector<string> sstr;
    for(uint16_t i=0;i<n;i++){//歌曲数次循环
        vector<string> testr;//用于记录已经打印的样本
        vector<string> cur_only;//用于记录当前sf2仅仅有用的样本
        fprintf(g_outputFile,";%s.sf2的样本部分-----------------------------\n",
                onlyFileName(g_inputFileName[i]).c_str());
        sort(g_allSampleNames[i].begin(),g_allSampleNames[i].end());//对每个sf2用到的样本排序
        //去掉每个sf2中重复的样本
        g_allSampleNames[i].erase(unique(g_allSampleNames[i].begin(),g_allSampleNames[i].end()),g_allSampleNames[i].end());

        for(uint16_t j=0;j<g_allSampleNames[i].size();j++){//每个sf2样本数次循环
            if(dichotomy(g_onlyUseSamples,0,g_onlyUseSamples.size()-1,g_allSampleNames[i][j])==-1){
                //和用到的样本没有相同
                string rm="samples\\"+g_allSampleNames[i][j];
                if(access(rm.c_str(),0)!=-1){//如果存在的话
                    remove(rm.c_str());//删除
                }
            }else{
                cur_only.push_back(g_allSampleNames[i][j]);
            }
        }

        for(uint16_t j=0;j<cur_only.size();j++){//每个sf2样本数次循环

            if(sstr.size()!=0&&dichotomy(sstr,0,sstr.size()-1,cur_only[j])!=-1){
                fprintf(g_outputFile,"\n;crc32label_%s:\t\t\t\n",cur_only[j].c_str());
                fprintf(g_outputFile,";.import \"%s\"\n\n",cur_only[j].c_str());
            }else{
                fprintf(g_outputFile,"crc32label_%s:\t\t\t",cur_only[j].c_str());
                fprintf(g_outputFile,";samples %d\n",samplenum);
                fprintf(g_outputFile,".import \"samples\\%s\"\n",cur_only[j].c_str());
                testr.push_back(cur_only[j]);//记录已经打印的
                samplenum++;
            }
        }
        fputs("\n",g_outputFile);
        sstr.assign(testr.begin(),testr.end());
        sort(sstr.begin(),sstr.end());
    }
    fputs(".close",g_outputFile);
    fputs("main.asm文件绘制完毕!\n",stdout);
    fclose(g_outputFile);
}
