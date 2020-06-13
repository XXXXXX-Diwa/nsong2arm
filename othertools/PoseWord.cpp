#include <iostream>
#include <io.h>
#include <fstream>
#include <vector>
#include <iomanip>


using namespace std;

class PoseWord{
	public:
	string fileName;
	string filePath;
	string shortName;
	
	PoseWord(string name):fileName(name){
		InspectFileExist(fileName);
		filePath=GetFilePath(fileName);
		shortName=GetShortName(fileName);
	}
	
	~PoseWord(){
		cerr<<"转换成功!"<<endl;
	}
	
	static void InspectFileExist(string s){
		if(access(s.c_str(),0)==-1){
			throw "错误: 文件: \""+s+"\" 不存在!";
		}
	}
	
	static string GetFilePath(string s){
		size_t pos=s.find_last_of('\\');
		if(pos>0&&pos!=string::npos){
			return s.substr(0,pos+1);
		}
		return "";
	}
	
	static string GetShortName(string s){
		size_t pos=s.find_last_of('.');
		if(pos>0&&pos!=string::npos){
			s=s.substr(0,pos);
		}
		pos=s.find_last_of('\\');
		if(pos>0&&pos!=string::npos){
			return s.substr(pos);
		}
		return s;
	}
	void PoseWordOut(){
		int poseNum=0;
		int curline=0;
		ifstream inf(fileName,ios::in);
		string ls=filePath+shortName+"_out.asm";
		ofstream ouf(ls,ios::out);
		
		if(inf.fail()){
			throw "文件: \""+fileName+"\" 打开失败!";
		}
		
		if(ouf.fail()){
			throw "文件: \""+ls+"\" 创建失败!";
		}
		
		// char c[8]={};
		string c;
		c.resize(8);
		bool blflag=false;
		bool evenjump=false;
		vector<string> poseOffset;
		uint32_t offset;
		string cmpstr;
		do{
			getline(inf,ls);
			++curline;
			if(ls.size()<20){
				break;
			}
			
			if(!blflag&&ls[18]=='b'&&ls[19]=='l'){
				poseNum=0;
				blflag=true;
			}
			
			if(blflag){
				if(ls[18]=='b'&&ls[19]=='l'){
					cmpstr=ls.substr(0,8);
					
					for(int i=0;i<poseOffset.size();++i){
						if(cmpstr==poseOffset[i]){
							ouf<<"\nPose_"<<hex<<setiosflags(ios::uppercase)<<i<<":"<<endl;
							evenjump=true;
							ouf<<ls.substr(0,26)<<"@Pose_"<<hex<<setiosflags(ios::uppercase)
							<<i<<"\t\t;"<<ls.substr(26)<<endl;
							break;
						}
					}
					if(evenjump){
						evenjump=false;
						continue;
					}
				}
				ouf<<ls<<endl;
			}else{
				c[4]=ls[9];
				c[5]=ls[10];
				c[6]=ls[11];
				c[7]=ls[12];
				getline(inf,ls);
				++curline;
				if(ls.size()<20||ls[18]=='b'){
					throw string("数据异常!");
				}
				c[0]=ls[9];
				c[1]=ls[10];
				c[2]=ls[11];
				c[3]=ls[12];
				poseOffset.push_back(c);
				try{
					offset=strtol(&c[0],NULL,16);
				}catch(exception &e){
					throw string(c)+"无法转化为地址!";
					cerr<<e.what()<<endl;
					cin.get();
					exit(1);
				}
				ouf<<"\t.word 0x0"<<hex<<setiosflags(ios::uppercase)<<offset<<"\t\t\t;Pose_"<<poseNum<<endl;
				++poseNum;
			}
			
		}while(!inf.eof());
		inf.close();
		ouf.close();
	}
};

int main(int argc,char *const argv[]){
	ios::sync_with_stdio(false);
	try{
		PoseWord *pw;
		if(argc<2){
			throw string("PoseWord v1.0 2020/6/12 by XXXXXX-Diwa\n用于汇编导出的pose分配地址数据转换!");
		}else if(argc>1){
			pw=new PoseWord(argv[1]);
		}
		pw->PoseWordOut();
		delete pw;
	}catch(string es){
		cerr<<es<<endl;
		cin.get();
		exit(1);
	}
	return 0;
}