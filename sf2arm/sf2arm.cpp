#include "sf2arm.h"

paraments::paraments(string path):pra_path(path){
    pra_path=onlyPath(pra_path);

    get_files((pra_path+"\\srcfiles").c_str(),filenames);
    string s;
    uint8_t file_n=filenames.size();
    if(file_n>100){
        throw string("�ļ�����̫��!");
    }else if(file_n==0){
        throw string("û��һ���ļ�������!");
    }
    for(uint8_t i=0;i<file_n;++i){
        filenames[i]=filenames[i].substr(0,filenames[i].size()-4);
        if(access((filenames[i]+".sf2").c_str(),0)==-1){
            throw string("�ļ�: \""+filenames[i]+".mid\"û���ҵ���Ӧ��sf2�ļ�");
        }
    }
    vector<string>vect(filenames);
    shortfilenames.swap(shortnamesget(vect));

}
vector<string>& paraments::shortnamesget(vector<string> &s){
    uint8_t n=s.size();
    for(uint8_t i=0;i<n;i++){
        size_t pos=s[i].find_last_of('\\');
        if(pos>0&&pos!=string::npos){
            s[i]=s[i].substr(pos+1);
        }
    }
    return s;   
}

// paraments::paraments(int arg,char* const argr[]){
//     pra_path=onlyPath(argr[0]);
//     string s;
//     for(int i=1;i<arg;i++){ 
//         s=argr[i];
//         size_t pos=s.find_last_of('.');
//         if(pos>0&&pos!=string::npos){
//             s=s.substr(0,pos);
//         }else {
//             throw string("�ļ�û����չ��!");
//         }
//         filenames.push_back(s);
//     }
//     double_file_exist(filenames);
//     vector<string>vect(filenames);
//     shortfilenames.swap(shortnamesget(vect));
// }

void paraments::get_files(const string path,vector<string>&files){
    long hFile=0;//�ļ����
    struct _finddata_t fileinfo;//�ļ���Ϣ,io.h
    string testr;
    if((hFile=_findfirst(testr.assign(path).append("\\*").c_str(),&fileinfo))!=-1){
        do{
            if(fileinfo.attrib&_A_SUBDIR){//��������ļ���
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
            throw string("�ļ�:\""+s[i]+".sf2"+"\"������!");
        }else if(access((s[i]+".mid").c_str(),0)==-1){
            throw string("�ļ�:\""+s[i]+".mid"+"\"������!");
        }
    }  
}

void paraments::tools_exist(){
    string s=pra_path+"\\mid2agb.exe";
    if(access(s.c_str(),0)==-1){
        throw "����: \""+s+"\"ȱʧ!";
    }
    s=pra_path+"\\sfileloop.exe";
    if(access(s.c_str(),0)==-1){
        throw "����: \""+s+"\"ȱʧ!";
    }
    s=pra_path+"\\asm2bin.exe";
    if(access(s.c_str(),0)==-1){
        throw "����: \""+s+"\"ȱʧ!";
    }
    s=pra_path+"\\trackDefine.exe";
    if(access(s.c_str(),0)==-1){
        throw "����: \""+s+"\"ȱʧ!";
    }
    s=pra_path+"\\sf2thumb.exe";
    if(access(s.c_str(),0)==-1){
        throw "����: \""+s+"\"ȱʧ!";
    }
}
void paraments::path_to_sfileout(){
    uint8_t n=filenames.size();
    for(uint8_t i=0;i<n;i++){
        filenames[i]=onlyPath(filenames[i])+"\\sfileout\\"+shortfilenames[i];
    }
}

string paraments::onlyPath(string s){
    size_t pos=s.find_last_of('\\');
    if(pos>0&&pos!=string::npos){
        return s.substr(0,pos);
    }else throw string("�޷���ȡ·��!");
}

int main(int argc,char* const argv[]){
    try{
        paraments *par;
        if(argc>1){
            // par=new paraments(argc,argv); 
			// cerr<<"please: .sf2 and .mid file put in name's srcfiles folder"<<endl;
            exit(0);
        }else{
            cerr<<"nsong2arm launch tool v1.0(3:04 2020/5/31) by: XXXXXX-Diwa"<<endl;
            par=new paraments(argv[0]);
        }
        par->tools_exist();//��鹤���Ƿ���ȫ
        uint16_t filen=par->filenames.size();
        string syscall=par->pra_path+"\\mid2agb.exe ";
        for(uint16_t i=0;i<filen;++i){//midת��Ϊ.s
            string scall=syscall+par->filenames[i];
            system(scall.c_str());
        }
        syscall=par->pra_path+"\\sfileloop.exe ";
        for(uint16_t i=0;i<filen;++i){//.sת��Ϊloop.s
            syscall+=par->filenames[i]+".s ";
        }
        system(syscall.c_str());
        for(uint16_t i=0;i<filen;++i){//ɾ��.s
            remove((par->filenames[i]+".s").c_str());
        }
        par->path_to_sfileout();//�ļ�������sfileoutĿ¼
        syscall=par->pra_path+"\\asm2bin.exe ";
        for(uint8_t i=0;i<filen;++i){
            syscall+=par->filenames[i]+".s ";
        }
        system(syscall.c_str());//loop.sת��Ϊbin
        for(uint8_t i=0;i<filen;++i){//ɾ��loop.s
            remove((par->filenames[i]+".s").c_str());
        }
        syscall=par->pra_path+"\\trackDefine.exe ";
        for(uint8_t i=0;i<filen;++i){//bin�ļ�ת��Ϊasm
            string scall=syscall+par->filenames[i]+".bin";
            system(scall.c_str());
        }
        for(uint8_t i=0;i<filen;++i){//ɾ��bin�ļ�
            remove((par->filenames[i]+".bin").c_str());
        }
        rmdir(paraments::onlyPath(par->filenames[0]).c_str());//ɾ��sfileout�ļ���
        syscall=par->pra_path+"\\Sf2thumb.exe ";
        for(uint8_t i=0;i<filen;++i){
            syscall+=par->pra_path+"\\srcfiles\\"+par->shortfilenames[i]+".sf2 ";
        }
        system(syscall.c_str());

        delete par;
    }catch(const string es){
        cerr<<"����: "<<es<<endl;
        cin.get();
        exit(1);
    }
    
    return 0;
}