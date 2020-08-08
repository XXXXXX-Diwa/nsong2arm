#include <iostream>
#include <fstream>
#include <cstdlib>
#include <sstream>
#include <cctype>
#include <iomanip>

using namespace std;
stringstream parstr;//定义字符串流
string strpar;//字符串流接收流

static void DectoHexstr(string &ls,uint8_t j,uint8_t &volset,uint16_t &overflow){
    uint8_t nst=strtol((ls.substr(j,4)).c_str(),NULL,16);
    nst=nst*volset/128;
    if(nst>127){
        ++overflow;
        nst=127;
    }
    parstr<<hex<<setiosflags(ios::uppercase)<<(int)nst;
    parstr>>strpar;
    ls[j+2]=strpar[0];
    ls[j+3]=strpar[1];
}
static string backups_name(string s){
    size_t pos=s.find_last_of('.');
    string l;
    if(pos>0&&pos!=string::npos){
        l=s.substr(pos+1);
        if(l=="asm"||l=="ASM"){
            return s.substr(0,pos)+"_backup.asm";
        }
    }
    throw "文件: "+s+"不是asm文件!";
}

int main(int argc,char const* argv[]){
    std::ios::sync_with_stdio(false);
    string curfile="";
    uint32_t curline=0;
    if(argc==1){
        cerr<<"trackdefine_file volume adjust tool v1.0 2020/6/2 (C) by JumZhu-Diwa"<<endl;
        exit(0);
    }
    try{
        uint8_t volset=0;
        cout<<"假设当前音量为128,你想要设置为多少(1-255)?"<<endl;
        int tn=0;
        cin>>tn;
        volset=tn;
        cin.clear();
        cin.sync();
        if(volset<1){
            throw string("输入的参数错误!");
        }
        ifstream inf;
        ofstream ouf;
        for(uint16_t i=1;i<argc;++i){
            curfile=argv[i];
            string ls=backups_name(curfile);
            if(rename(argv[i],ls.c_str())){
                throw string("文件重命名失败!/(没删除已经backup的asm)?");
            } 
            inf.open(ls,ios::in);
            if(inf.fail()){
                throw string("文件打开失败!");
            }
            ouf.open(argv[i],ios::out);
            bool parnextline=false;//针对0xBE在本行末尾的情况
            uint16_t volsign=0;//音量修改处的总数
            uint16_t overflow=0;//音量值修改超过了127的总数
            bool mod=true;
            while(true){
                uint8_t col; 
                getline(inf,ls);
                ++curline;
                if(mod){
                    if(ls[1]=='.'){
                        uint8_t i=5;
                        if(parnextline){
                            parnextline=false;
                            i=10;
                            DectoHexstr(ls,5,volset,overflow);
                        }
                        col=ls.size();
                        for(;i<col;i+=5){
                            if(ls[i+2]=='B'&&ls[i+3]=='E'){
                                ++volsign;
                                if(i+5>col){
                                    parnextline=true;
                                }else{
                                    DectoHexstr(ls,i+5,volset,overflow);
                                }
                            }
                        }
                    }else if(ls==".align"){
                        mod=false;
                    }
                }
                if(inf.eof()){
                    ouf<<ls;
                    break;
                }
                ouf<<ls<<endl;
            }
            inf.close();
            ouf.close();
            cout<<"文件: "<<curfile<<"数据如下: "<<endl;
            cout<<"共有"<<int(volsign)<<"个声音更改标记,更改的音量值超过127的参数数量为: "<<int(overflow)<<endl;
            curline=0;
            cout<<endl;
        }
        cin.get();
    }catch(string es){
        cerr<<"文件: "<<curfile<<endl;
        cerr<<"行"<<(int)curline<<" "<<"错误: "<<es<<endl;
        cin.get();
        exit(1);
    }
    return 0;
}