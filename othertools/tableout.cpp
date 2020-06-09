#include<iostream>
#include<io.h>
#include<fstream>
#include<vector>
#include<iomanip>

using namespace std;
struct Table{
    uint32_t headoft;
    uint32_t Songgop;
}tab;
class SongTable{
    public:
    string fileName;
    uint32_t fileSize;
    uint32_t firstTable;
    int songNum;
    vector<uint32_t> tablePool;
    string filePath;
    string shortFileName;
    

    SongTable(){
        throw string("tableout v1.0 2020/6/9 by XXXXXX-Diwa");
    }
    SongTable(string fn):fileName(fn){
        if(access(fileName.c_str(),0)==-1){
            throw "错误: 文件:\""+fileName+"\"不存在!";
        }
        ifstream inf(fileName,ios::in|ios::binary);
        if(inf.fail()){
            throw "错误: 文件:\""+fileName+"\"无法被阅读!";
        } 
        uint32_t beginoft=inf.tellg();
        inf.seekg(0,ios::end);
        uint32_t endoft=inf.tellg();
        fileSize=endoft-beginoft;
        inf.close();
        filePath=getPath(fileName);
        shortFileName=getFileName(fileName);
    }
    SongTable(string fn,string ft):SongTable(fn){
        songNum=0;
        firstTable=strtol(ft.c_str(),NULL,16);
        checkFirstTable();
        getTablePool();
    }

    void getFirstTable(){
        cout<<"请输入首Table地址: ";
        string s;
        cin>>s;
        firstTable=strtol(s.c_str(),NULL,16);
        cin.clear();
        cin.sync();
    }

    void getTablePool(){
        ifstream inf(fileName,ios::in|ios::binary);
        uint32_t filebeg=inf.tellg();
        uint32_t *buff=new uint32_t[1024];
        do{
            inf.read((char*)buff,1024*4);
            uint32_t oftcmp=firstTable|0x8000000;
            for(int i=0;i<1024;++i){
                if(buff[i]==oftcmp){
                    uint32_t readoft=inf.tellg();
                    readoft-=filebeg;
                    readoft-=(1024-i)*4;
                    tablePool.push_back(readoft);
                }
            }
        }while(!inf.eof());
        delete[] buff;
        inf.close();
    }

    void checkFirstTable(){
        ifstream inf(fileName,ios::in|ios::binary);
        if(firstTable==0||firstTable>fileSize){
            throw "错误: 不是正确的Table地址!";
        }else{
            inf.seekg(firstTable);
            do{
                inf.read((char*)&tab,8);
                if(tab.headoft>>25==4&&tab.Songgop>>24==0&&tab.Songgop>>8<<24==0){
                    ++songNum;
                }else{
                    break;
                }
            }while(!inf.eof());
            if(songNum==0){
                throw "错误: 不是正确的Table地址!";
            }
        }
        inf.close();
    }

    string getPath(string s){
        size_t pos=s.find_last_of('\\');
        if(pos>0&&pos!=string::npos){
            return s.substr(0,pos+1);
        }
        return "";
    }
    
    string getFileName(string s){
        size_t pos=s.find_last_of('\\');
        if(pos>0&&pos!=string::npos){
            s=s.substr(pos+1);
        }
        pos=s.find_last_of('.');
        if(pos>0||pos!=string::npos){
            return s.substr(0,pos);
        }
        return s;
    }
    void printingAsm(){
        string outfile=filePath+shortFileName+".asm";
        ofstream ouf(outfile,ios::out);
        ifstream inf(fileName,ios::in|ios::binary);
        if(ouf.fail()){
            throw "错误: 创建文件: \""+outfile+"\"失败!";
        }
        ouf<<".gba"<<endl;
        ouf<<".open \"zm.gba\",\"TableMoved.gba\",0x8000000"<<endl;
        ouf<<endl;
        uint32_t offset=firstTable|0x8000000;
        ouf<<".definelabel newTableOffset,0x"<<hex
        <<setiosflags(ios::uppercase)<<offset<<endl;
        ouf<<endl;
        for(uint32_t i=0;i<tablePool.size();++i){
            offset=tablePool[i]|0x8000000;
            ouf<<".org 0x"<<hex<<setiosflags(ios::uppercase)<<offset<<endl;
            ouf<<"\t.word newTableOffset\n"<<endl;
        }
        ouf<<endl;
        ouf<<".org newTableOffset"<<endl;
        inf.seekg(firstTable);
        for(int i=0;i<songNum;++i){
            inf.read((char*)&tab,8);
            ouf<<"\t.word 0x"<<hex<<setiosflags(ios::uppercase)<<tab.headoft
            <<",0x"<<tab.Songgop<<"\t\t\t\t;0x"<<i<<dec<<" 第"<<i<<"首\n"<<endl;
        }
        ouf<<"\n\n.close"<<endl;
        inf.close();
        ouf.close();
    }
};

int main(int argc,char* const argv[]){
    ios::sync_with_stdio(false);
    try{
        SongTable *st;
        if(argc==1||argc>3){
            st=new SongTable();
        }else if(argc==2){
            st=new SongTable(argv[1]);
            st->getFirstTable();
            st->checkFirstTable();
            st->getTablePool();
        }else{
            st=new SongTable(argv[1],argv[2]);
        }
        st->printingAsm();
        
    }catch(string es){
        cerr<<es<<endl;
        cin.get();
        exit(1);
    }
    cout<<"成功导出!";
    cin.get();
    return 0;
}