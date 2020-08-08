#include <iostream>
#include <memory>
#include <vector>
#include <fstream>
#include <io.h>

using namespace std;

class Trans{
	private:
	struct WavStruct{
		char riff[4]={'R','I','F','F'};
		uint32_t wavLen;//wav�����ܳ���-8
		char wavefmt[8]={'W','A','V','E','f','m','t',' '};
		uint32_t fmtLen=0x10;
		uint16_t pcm=1;//���ݹ��
		uint16_t channel=1;//����
		uint32_t samplingRate=0x112B;//������
		uint32_t playbackRate=0x112B;//���ݴ�������
		uint16_t dataAlign=1;//����֡ ���ݶ���
		uint16_t sampleingBit=8;//����λ��
		char data[4]={'d','a','t','a'};
		uint32_t dataLen;
	};
	uint8_t buffer[0x100000];//1mb����
	// string datail="sample to wav tool by XXXXXX-Diwa";
	vector<string>sampleFile;
	
	public:
	Trans(int fileNum,char* const filePath[]){
		sampleFile.reserve(fileNum-2);
		string s;
		for(int i=1;i<fileNum;++i){
			s=filePath[i];
			if((access(s.c_str(),F_OK))==-1){
				cerr<<"�ļ�: \""+s+"\"������!";
				continue;
			}
			sampleFile.push_back(s);
		}
		if(sampleFile.size()==0){
			cerr<<"û��һ�����ڵ��ļ�!";
			exit(1);
		}
	}
	~Trans(){}
	void SampleNameToWavName(string &s){
		size_t pos=s.find_last_of('.');
		if(pos>0&&pos!=string::npos){
			s=s.substr(0,pos+1)+"wav";
		}
		s=s+".wav";
	}
	
	void SampleToWav(){
		ifstream inf;
		ofstream ouf;
		vector<string>::iterator it=sampleFile.begin();
		string s;
		WavStruct ws;
		for(;it!=sampleFile.end();++it){
			s=*it;
			inf.open(s,ios::in|ios::binary);
			if(inf.fail()){
				cerr<<"�޷����ļ�: \""+s;
				exit(1);
			}
			SampleNameToWavName(s);
			ouf.open(s,ios::out|ios::binary);
			if(ouf.fail()){
				cerr<<"�޷������ļ�: \""+s;
			}
			inf.seekg(12,ios::beg);
			inf.read((char*)&ws.dataLen,4);
			ws.wavLen=ws.dataLen+sizeof(ws)-8;
			
			ouf.write((char*)&ws,sizeof(ws));
			inf.read((char*)buffer,ws.dataLen);
			ouf.write((char*)buffer,ws.dataLen);
			inf.close();
			ouf.close();
		}
	}
};

int main(int argc,char* const argv[]){
	ios::sync_with_stdio(false);
	if(argc==1){
		cerr<<"sample to wav tool 1.0 by XXXXXX-Diwa at 2020/7/30";
		exit(1);
	}
	unique_ptr<Trans> trans(new Trans(argc,argv));
	trans->SampleToWav();
	return 0;
}