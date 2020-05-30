#include "sf2arm.h"

paraments::paraments(string path):pra_path(path){
    pra_path=onlyPath(pra_path);

    get_files((pra_path+"\\srcfiles").c_str(),filenames);
    string s;
    uint8_t file_n=filenames.size();
    if(file_n>100){
        throw string("文件数量太多!");
    }else if(file_n==0){
        throw string("没有一个文件被载入!");
    }
    for(uint8_t i=0;i<file_n;++i){
        filenames[i]=filenames[i].substr(0,filenames[i].size()-4);
        if(access((filenames[i]+".sf2").c_str(),0)==-1){
            throw string("文件: \""+filenames[i]+".mid\"没有找到对应的sf2文件");
        }
    }
}

paraments::paraments(int arg,char* const argr[]){
    pra_path=onlyPath(argr[0]);
    string s;
    for(int i=1;i<arg;i++){ 
        s=argr[i];
        size_t pos=s.find_last_of('.');
        if(pos>0&&pos!=string::npos){
            s=s.substr(0,pos);
        }else {
            throw string("文件没有扩展名!");
        }
        filenames.push_back(s);
    }
    double_file_exist(filenames);
}

void paraments::get_files(const string path,vector<string>&files){
    long hFile=0;//文件句柄
    struct _finddata_t fileinfo;//文件信息,io.h
    string testr;
    if((hFile=_findfirst(testr.assign(path).append("\\*").c_str(),&fileinfo))!=-1){
        do{
            if(fileinfo.attrib&_A_SUBDIR){//如果还是文件夹
                // if(strcmp(fileinfo.name,".")!=0&&strcmp(fileinfo.name,"..")!=0){
                //     get_files(testr.assign(path).append("\\").append(fileinfo.name),files);
                // }
                continue;
            }else{
                    string s=fileinfo.name;
                    s=s.substr(s.size()-4);
                    if(s==".mid"||s==".MID"){
                        files.push_back(testr.assign(path).append("\\").append(fileinfo.name));
                    }
            }
        }while(_findnext(hFile,&fileinfo)==0);
        _findclose(hFile);
    }
}

void paraments::double_file_exist(vector<string> &s){
    for(int i=0;i<s.size();i++){
        if(access((s[i]+".sf2").c_str(),0)==-1){
            throw string("文件:\""+s[i]+".sf2"+"\"不存在!");
        }else if(access((s[i]+".mid").c_str(),0)==-1){
            throw string("文件:\""+s[i]+".mid"+"\"不存在!");
        }
    }
    
}
void paraments::tools_exist(){
    string s=pra_path+"\\mid2agb.exe";
    if(access(s.c_str(),0)==-1){
        throw "工具: \""+s+"\"缺失!";
    }
    s=pra_path+"\\sfileloop.exe";
    if(access(s.c_str(),0)==-1){
        throw "工具: \""+s+"\"缺失!";
    }
}
string paraments::onlyPath(string s){
    size_t pos=s.find_last_of('\\');
    if(pos>0&&pos!=string::npos){
        return s.substr(0,pos);
    }else throw string("无法获取路径!");
}

int main(int argc,char* const argv[]){
    try{
        paraments *par;
        if(argc>1){
            par=new paraments(argc,argv);
        }else{
            par=new paraments(argv[0]);
        }
        par->tools_exist();//检查工具是否齐全
        uint16_t filen=par->filenames.size();
        string syscall=par->pra_path+"\\mid2agb.exe ";
        for(uint16_t i=0;i<filen;++i){
            string scall=syscall+par->filenames[i];
            system(scall.c_str());
        }
        syscall=par->pra_path+"\\sfileloop.exe ";
        for(uint16_t i=0;i<filen;++i){
            syscall+=par->filenames[i]+".s ";
        }
        system(syscall.c_str());
        for(uint16_t i=0;i<filen;++i){
            remove((par->filenames[i]+".s").c_str());
        }
        

        delete par;
    }catch(const string es){
        cerr<<"错误: "<<es<<endl;
        cin.get();
        exit(1);
    }
    
    return 0;
}