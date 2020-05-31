#include "main.h"
#include "defineLabel.h"

static uint8_t Ytag=0;


std::string onlyFileName(std::string s)
{
    size_t pos = s.find_last_of('\\');
    if(pos>0 && pos!=std::string::npos)
    {
        s = s.substr(pos+1);        //去目录
    }
    pos = s.find_last_of('.');
    if(pos>0 && pos!=std::string::npos)
    {
        return s.substr(0,pos);     //去扩展名
    }
    return s;
}

int NewLabel()
{
    char label[20];
    memset(label,0,21);
    if(Ytag!=0||std::toupper(getch())=='Y')
    {
        Ytag=1;
        std::printf("请输入文件标签/名: ");
        scanf("%s",label);
        if(label[19]!='\0'&&label[0]!='\0')
        {
            std::printf("错误!请把标签名限制在20位内!\n\n");
            return 1;
        }
        else if(label[4]=='\0')
        {
            std::printf("错误!标签名不要短于4位!\n\n");
        return 1;
        }
        else
        {
            for(uint8_t i=0;i<19;i++)
            {
                if(i==0 &&label[i]<=57&&label[i]>=48)
                {
                    std::printf("错误!标签名不能以数字开头!\n\n");
                    return 1;
                }
                else if(label[i]==0)
                {
                    break;
                }
                else if(label[i] <48 ||label[i]>122||
                    label[i]==91||label[i]==92||
                    label[i]==93||label[i]==94||
                    label[i]==96||label[i]==58||
                    label[i]==59||label[i]==60||
                    label[i]==61||label[i]==62||
                    label[i]==63||label[i]==64)
                {
                    std::printf("错误!标签名不能包含特殊字符!\n\n");
                    return 1;
                }
            }
        }
        g_outputFileName=label;
        getchar();
    }

    else
    {
        g_outputFileName=onlyFileName(g_inputFileName[0]);//空的话直接按输入文件名作为标签
        std::printf("不重新定义标签/名!\n");
    }
    return 0;
}

void outFileLabel()
{
    if(g_inputFileName.size()==0)
    {
        char name[60];
        std::printf("请载入一个VGMTrans规格的Riff文件!\n文件名: ");
        std::scanf("%s",name);
        fflush(stdin);
        g_inputFileName.push_back(name);
        g_inputFile=fopen(g_inputFileName[0].c_str(),"rb");
        if(g_inputFile==nullptr)
        {
            std::printf("无法打开文件: %s",g_inputFileName[0].c_str());
            exit(1);
        }
        fclose(g_inputFile);

    }
    std::printf("重新定义输出文件标签/名?--<Y\\N>\n");
    while(NewLabel());
    std::printf("\n标签/名为: %s\n",g_outputFileName.c_str());
}
