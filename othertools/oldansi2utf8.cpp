#include <iostream>
#include <fstream>
#include <vector>
#include <memory>
#include <wchar.h>
#include <windows.h>
#include <sstream>
using namespace std;
class CodingConver{
	vector<string>txtFile;
	public:
	CodingConver(const int num,char* const file[]){
		txtFile.reserve(num-2);
		for(int i=1;i<num;++i){
			txtFile.push_back(file[i]);
		}
	}
	void FileToFile(){
		vector<string>::iterator iter=txtFile.begin();
		ifstream inf;
		ofstream ouf;
		stringstream ss;
		string astr;
		// unit8_t bom[3]={0xEF,0xBF,0XBD};
		for(;iter!=txtFile.end();++iter){
			inf.open(*iter,ios::in|ios::binary);
			if(inf.fail()){
				cerr<<"文件: \""+*iter+"\"无法打开!";
				exit(1);
			}
			ss<<inf.rdbuf();
			astr=ss.str();
			inf.close();
			ss.str("");
			AnsiToUtf8(astr);
			ouf.open(*iter,ios::out|ios::binary);
			if(ouf.fail()){
				cerr<<"文件: \""+*iter+"\"无法创建!";
			}
			// ouf.write((char*)bom,3);
			ouf.write(astr.c_str(),astr.size());
			ouf.close();
		}
	}
	void AnsiToUtf8(string &s){
		if(s.empty()){
			cerr<<"文件0字节!"<<endl;
			cin.get();
			exit(1);
		}
		auto const wlen=MultiByteToWideChar(CP_ACP,0,s.c_str(),s.size(),nullptr,0);
		// auto wstr=make_shared<wchar_t*>(wlen+1);
		wchar_t* wstr=new wchar_t[wlen+1];
		wstr[wlen]='\0';
		MultiByteToWideChar(CP_ACP,0,s.c_str(),s.size(),wstr,wlen);
		auto const len=WideCharToMultiByte(CP_UTF8,0,wstr,wlen,nullptr,0,NULL,NULL);
		// auto str = make_shared<char*>(len+1);
		char* str=new char[len+1];
		str[len]='\0';
		WideCharToMultiByte(CP_UTF8,0,wstr,wlen,str,len,NULL,NULL);
		s=string(str,len);
		// return string(str,len);
		delete[]wstr;
		delete[]str;
	}
	~CodingConver(){}
};

int main(const int argc,char* const argv[]){
	if(argc==1){
		cerr<<"Ansi2Utf8 v1.0 by XXXXXX-Diwa 2020/8/7";
		exit(0);
	}
	unique_ptr<CodingConver>cc(new CodingConver(argc,argv));
	cc->FileToFile();
	return 0;
}