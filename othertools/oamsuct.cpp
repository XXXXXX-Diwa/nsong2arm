#include <iostream>
#include <cstdlib>
#include <io.h>
#include <iomanip>
#include <algorithm>
#include <fstream>
#include <vector>
using namespace std;
struct OamMain{
    uint32_t oamOffset;
    uint32_t oamFrames;
}oammain;
struct OamPart{
    uint16_t partNum;
    uint16_t parts[][3];
};

bool compare(const OamMain &O1,const OamMain &O2){
    return O1.oamOffset<O2.oamOffset;
}
bool myunique(const OamMain &O1,const OamMain &O2){
    return O1.oamOffset==O2.oamOffset;
}

class OamSuct{
    public:
    string romName;
    string romPath;
    string shortRomName;
    uint32_t oamOffset;
    string oamLabel;
    OamSuct(string rom):romName(rom){
        fileExistInspect(romName);
    }
    OamSuct(string rom,string offset):romName(rom){
        fileExistInspect(romName);
        oamOffset=strtobit32(offset);
    }
    OamSuct(string rom,string offset,string label):romName(rom),oamLabel(label){
        fileExistInspect(romName);
        oamOffset=strtobit32(offset);
    }
    void fileExistInspect(string s){
        if(access(s.c_str(),0)==-1){
            throw "错误! 文件: \""+romName+"\"不存在!";
        }
        size_t pos=s.find_last_of('\\');
        if(pos>0&&pos!=string::npos){
            romPath=s.substr(0,pos+1);
            shortRomName=s.substr(pos); 
        }else{
            romPath="";
            shortRomName=romName; 
        }
        removeExtension(shortRomName);
    }
    void removeExtension(string &s){
        size_t pos=s.find_last_of('.');
        if(pos>0&&pos!=string::npos){
            s=s.substr(0,pos);
        }
    }
    uint32_t strtobit32(string s){
        char *c;
        uint32_t offset;
        offset=strtoul(s.c_str(),&c,16);
        if(c=='\0'){
            throw "错误! 地址: \""+s+"\"错误!";
        }
        return offset;
    }
    uint32_t getOffset(){
        string s;
        cin>>s;
        cin.get();
        cin.clear();
        cin.sync();
        return strtobit32(s);
    }
    string getOneStr(){
        string s;
        cin>>s;
        cin.get();
        cin.clear();
        cin.sync();
        return s;
    }

    void SuckOAM(){
        vector<OamMain> om;
        string s=romPath+shortRomName+"_oam_out.asm";
        uint32_t bit32;
        uint16_t bit16;
        ifstream inf(romName,ios::in|ios::binary);
        if(inf.fail()){
            throw "错误! 文件: \""+romName+"\"无法读取!";
        }
        ofstream ouf(s,ios::out);
        if(ouf.fail()){
            throw "错误! 文件: \""+s+"\"无法创建!";
        }
        inf.seekg(oamOffset);
        do{
            inf.read((char*)&oammain,8);
            if(oammain.oamOffset!=0){
                if(oammain.oamOffset>>25!=4||oammain.oamFrames>>8!=0){
                    s.resize(7);
                    bit32=uint32_t(inf.tellg())-8;
                    itoa(bit32,&s[0],16);
                    throw "错误! 不正常的OAM数据! 地址: "+s; 
                }
                om.push_back(oammain);
            }else{
                if(oammain.oamFrames!=0){
                    bit32=uint32_t(inf.tellg())-8;
                    s.resize(7);
                    itoa(bit32,&s[0],16);
                    throw "错误! 不正常的OAM结束数据! 地址: "+s;
                }
                // om.push_back(oammain);//.word 0,0就省了
                break;
            }
        }while(!inf.eof());
        OamPart *oampart=(OamPart*)malloc(sizeof(OamPart)+sizeof(uint16_t)*3*255);
        ouf<<".align\n"<<oamLabel<<"OAM:\t\t\t;"<<hex<<setiosflags(ios::uppercase)
        <<oamOffset<<endl;
        for(uint32_t k=1;k<=om.size();++k){
            uint32_t h=1;
            for(;h<=k;++h){
                if(om[k-1].oamOffset==om[h-1].oamOffset){
                    break;
                }
            }
            ouf<<"\t.dw "<<oamLabel<<"OAM"<<k<<hex<<setiosflags(ios::uppercase)
            <<"\t\t\t;"<<(om[k-1].oamOffset^0x8000000)<<endl;
            ouf<<"\t.dw 0x"<<hex<<setiosflags(ios::uppercase)<<om[h-1].oamFrames<<endl;
        }
        ouf<<"\t.dw 0,0"<<endl;
        sort(om.begin(),om.end(),compare);
        om.erase(unique(om.begin(),om.end(),myunique),om.end());
        for(uint32_t k=1;k<=om.size();++k){
            bit32=om[k-1].oamOffset^0x8000000;
            inf.seekg(bit32);
            inf.read((char*)oampart,sizeof(OamPart)+sizeof(uint16_t)*3*255);
            ouf<<oamLabel<<"OAM"<<k<<":\t\t\t;"<<hex<<setiosflags(ios::uppercase)
            <<bit32<<endl;
            ouf<<"\t.dh 0x"<<hex<<setiosflags(ios::uppercase)<<oampart->partNum<<endl;
            for(uint32_t h=0;h<oampart->partNum;++h){
                ouf<<"\t.dh 0x"<<hex<<setiosflags(ios::uppercase)<<setfill('0')
                <<setw(4) <<oampart->parts[h][0]<<",0x"<<setw(4)<<oampart->parts[h][1]
                <<",0x"<<setw(4)<<oampart->parts[h][2]<<endl;
            }
        }
        free((OamPart*)oampart);
        inf.close();
        ouf.close();
    }

};

int main(int argc,char *const argv[]){
    ios::sync_with_stdio(false);
    try{
        OamSuct *os;
        if(argc==1){
            throw string("OAMSuct v1.0 2020/6/16 by XXXXXX-Diwa");
        }else if(argc==2){
            os=new OamSuct(argv[1]);
            cout<<"请输入OAM地址: ";
            os->oamOffset=os->getOffset();
            cout<<"请输入OAMLabel: ";
            os->oamLabel=os->getOneStr();
        }else if(argc==3){
            os=new OamSuct(argv[1],argv[2]);
            cout<<"请输入OAMlabel: ";
            os->oamLabel=os->getOneStr();
        }else if(argc==4){
            os=new OamSuct(argv[1],argv[2],argv[3]);
        }
        os->SuckOAM();
    }catch(string es){
        cerr<<es<<endl;
        cin.get();
        // cin.get();
        exit(1);
    }
    return 0;
}
