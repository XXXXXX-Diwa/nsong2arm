#include <iostream>
#include <sstream>
#include <iomanip>
#include <fstream>
#include <vector>
using namespace std;

int main(){
	ifstream inf("mf.gba",ios::in|ios::binary);
	if(inf.fail()){
		cerr<<"speedsuct v1.0 2020/6/19 by XXXXXX-Diwa";
		cin.get();
		exit(1);
	}
	cout<<"�������ַ: ";
	string s;
	cin>>s;
	cin.get();
	cin.clear();
	cin.sync();
	cout<<"�������ǩ: ";
	string label;
	cin>>label;
	cin.get();
	cin.clear();
	cin.sync();
	stringstream ss;
	ss<<s;
	uint32_t offset;
	ss>>hex>>setiosflags(ios::uppercase)>>offset;
	ofstream ouf("mf_speed_out.asm",ios::out);
	if(ouf.fail()){
		cerr<<"�޷������ļ�: \"mf_speed_out.asm!";
		cin.get();
		exit(1);
	}
	int len=500;
	bool twiceJump=false;
	bool twicetry=false;
	while(true){
		uint16_t *buffer=new uint16_t[len];
		inf.seekg(offset);
		inf.read((char*)buffer,sizeof(uint16_t)*500);
		ouf<<".align\n"<<label<<"Speed:\t\t\t;"<<hex
		<<setiosflags(ios::uppercase)<<offset<<"\n\t.dh ";
		int newline=0;
		for(int i=0;i<500;++i){
			if(buffer[i]==0x7FFF){
				ouf<<"0x"<<hex<<setiosflags(ios::uppercase)
				<<setw(4)<<setfill('0')<<buffer[i];
				twiceJump=true;
				break;
			}else{
				ouf<<"0x"<<hex<<setiosflags(ios::uppercase)
				<<setw(4)<<setfill('0')<<buffer[i];
			}
			++newline;
			if(newline>5){
				newline=0;
				ouf<<"\n\t.dh ";
			}else{
				ouf<<",";
			}
		}
		if(twiceJump){
			break;
		}else if(twicetry){
			cerr<<"�Ծ�û���ҵ����ݽ�β!"<<endl;
			cin.get();
			exit(1);
		}else{
			cout<<"���ݳ���������,��������������: ";
			cin>>s;
			cin.get();
			cin.clear();
			cin.sync();
			ss<<s;
			ss>>dec>>len;
			ouf.close();
			ouf.clear();
			ouf.open("mf_speed_out.asm",ios::out);
			twicetry=true;
		}
	}
	inf.close();
	ouf.close();
	return 0;
}