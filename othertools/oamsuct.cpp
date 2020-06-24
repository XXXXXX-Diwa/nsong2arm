#include <iostream>
#include <cstdlib>
#include <io.h>
#include <iomanip>
#include <algorithm>
#include <fstream>
#include <vector>
#include <sstream>
using namespace std;
struct OamMain{
    uint32_t oamOffset;
    uint32_t oamFrames;
}oammain;
struct OamPart{
    uint16_t partNum;
    uint16_t parts[][3];
};

// bool compare(const OamMain &O1,const OamMain &O2){
    // return O1.oamOffset<O2.oamOffset;
// }
// bool myunique(const OamMain &O1,const OamMain &O2){
    // return O1.oamOffset==O2.oamOffset;
// }

class OamSuct{
    public:
    string romName;
    string romPath;
    string shortRomName;
    uint32_t oamOffset;
    string oamLabel;
	OamSuct(){
		romName="mf.gba";
		romPath="";
		shortRomName="mf";
		fileExistInspect(romName);
	}
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
            // throw "错误! 文件: \""+romName+"\"不存在!";
			throw string("OAMSuct v1.0 2020/6/16 by XXXXXX-Diwa");
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
    string throwErrorOffset(ifstream &ifs){
        uint32_t byte128;
        string str;
        byte128=uint32_t(ifs.tellg())-8;
        stringstream ss;
        ss<<hex<<setiosflags(ios::uppercase)<<byte128;
        ss>>str;
        throw "错误! 不正常的OAM数据! 地址: "+str; 
    }
	
	string &getOutFileRoute(string &s){
		size_t pos=s.find_first_of('\"');
		if(pos>0&&pos!=string::npos){
			if(s.substr(0,pos)=="outFileRoute="){
				s=s.substr(pos+1,s.size()-pos-2);
				fileExistInspect(s);
				return s;
			}
		}
		throw string("错误! 配置文件outfile.ini数据异常!");
	}
    void SuckOAM(){
        vector<OamMain> om;
        string s;//=romPath+shortRomName+"_oam_out.asm";
        uint32_t bit32;
		ifstream inf("outfile.ini",ios::in);
		if(inf.fail()){
			throw string("错误! 缺少配置文件outfile.ini!");
		}
		getline(inf,s);
		getOutFileRoute(s);
		inf.close();
		inf.clear();
        inf.open(romName,ios::in|ios::binary);
        if(inf.fail()){
            throw "错误! 文件: \""+romName+"\"无法读取!";
        }
        ofstream ouf(s,ios::out|ios::app);
        if(ouf.fail()){
            throw "错误! 文件: \""+s+"\"无法创建!";
        }
        inf.seekg(oamOffset);
        do{
            inf.read((char*)&oammain,8);
            if(oammain.oamOffset!=0){
                if(oammain.oamOffset>>25!=4||oammain.oamFrames>>8!=0){
                    throwErrorOffset(inf);
                }
                om.push_back(oammain);
            }else{
                if(oammain.oamFrames!=0){
                    throwErrorOffset(inf);
                }
                // om.push_back(oammain);//.word 0,0就省了
                break;
            }
        }while(!inf.eof());
        OamPart *oampart=(OamPart*)malloc(sizeof(OamPart)+sizeof(uint16_t)*3*255);
        ouf<<".align\n"<<oamLabel<<"OAM:\t\t\t;"<<hex<<setiosflags(ios::uppercase)
        <<oamOffset<<endl;
		vector<OamMain>cpom(om.begin(),om.begin()+1);
        // sort(cpom.begin(),cpom.end(),compare);
        // cpom.erase(unique(cpom.begin(),cpom.end(),myunique),cpom.end());
		for(uint32_t k=1;k<om.size();++k){
			for(uint32_t t=0;t<cpom.size();++t){
				if(om[k].oamOffset==cpom[t].oamOffset){
					break;
				}else if(t==cpom.size()-1){
					cpom.push_back(om[k]);
					break;
				}
			}
		}
        for(uint32_t k=0;k<om.size();++k){
			uint32_t h=0;
            for(;h<cpom.size();++h){
                if(om[k].oamOffset==cpom[h].oamOffset){
                    break;
                }
            }
            ouf<<"\t.dw "<<oamLabel<<"OAM"<<hex<<setiosflags(ios::uppercase)<<h+1
            <<"\t\t\t;"<<(om[k].oamOffset^0x8000000)<<endl;
            ouf<<"\t.dw 0x"<<hex<<setiosflags(ios::uppercase)<<cpom[h].oamFrames<<endl;
        }
        ouf<<"\t.dw 0,0"<<endl;
		
        for(uint32_t k=1;k<=cpom.size();++k){
            bit32=cpom[k-1].oamOffset^0x8000000;
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
		ouf<<endl;
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
            os=new OamSuct();
            cout<<"请输入OAM地址: ";
            os->oamOffset=os->getOffset();
            cout<<"请输入OAMLabel: ";
            os->oamLabel=os->getOneStr();
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
		delete os;
    }catch(string es){
        cerr<<es<<endl;
        cin.get();
        // cin.get();
        exit(1);
    }
    return 0;
}
