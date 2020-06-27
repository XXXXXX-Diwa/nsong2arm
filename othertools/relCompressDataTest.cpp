#include <iostream>
#include <fstream>

using namespace std;


int main(int argc,char *const argv[]){
	ios::sync_with_stdio(false);
	try{
		if(argc==1){
			throw string("临时测试rel压缩数据用!");
		}
		ifstream inf(argv[1],ios::in|ios::binary);
		if(inf.fail()){
			throw string("无法读取文件!");
		}
		inf.seekg(2,ios::beg);
		bool swibit=false;
		uint32_t total=0;
		uint16_t bit16;
		uint8_t ut8,bit1,byte8;
		ut8=inf.get();
		while(true){
			cout<<"当前读取位置为: "<<hex<<inf.tellg()<<endl;
			if(ut8==1){
				bit1=inf.get();
				cout<<"第二个字节为: "<<hex<<int(bit1)<<endl;
				// cin.get();

				if(bit1==0){
					if(swibit){
						cout<<"在位置: "<<hex<<inf.tellg()<<"处结束!"<<endl;
						cin.get();
						break;
					}
					cout<<"在位置: "<<hex<<inf.tellg()<<"处切换"<<endl;
					cin.get();
					swibit=true;
					ut8=inf.get();//此处可能转为2bit类型,只要该值不为1
					//2bit类型的第二字节和第三字节同时为0才会结束,故结尾为00 00
					//但若维持1bit类型,则第二个字节再次为0就会结束
					
				}else if((bit1&0x80)==0){
					total+=bit1;
					inf.seekg(bit1,ios::cur);
					cout<<"第二个字节打印了"<<hex<<int(bit1)<<"个字节"<<endl;
					cout<<"下个第二字节读取地址为: "<<hex<<inf.tellg()<<endl;
					cout<<"总数为: "<<hex<<int(total)<<endl;
					// cin.get();
				}else{
					bit1^=0x80;
					if(bit1==0){
						continue;
					}
					total+=bit1;
					inf.seekg(1,ios::cur);
					cout<<"第二个字节打印了"<<hex<<int(bit1)<<"个字节"<<endl;
					cout<<"下个第二字节读取地址为: "<<hex<<inf.tellg()<<endl;
					cout<<"总数为: "<<hex<<int(total)<<endl;
					// cin.get();
				}
			}else{
				bit1=inf.get();
				byte8=inf.get();

				bit16=(bit1<<8)|byte8;
				cout<<"合并的第二个字节为: "<<hex<<int(bit16)<<endl;
				// cin.get();
				if(bit16==0){
					if(swibit){
						cout<<"在位置: "<<hex<<inf.tellg()<<"处结束!"<<endl;
						break;
					}
					cout<<"在位置: "<<hex<<inf.tellg()<<"处切换"<<endl;
					swibit=true;
					
				}else if((bit16&0x8000)==0){
					total+=bit16;
					inf.seekg(bit16,ios::cur);
					cout<<"第二个字节打印了"<<hex<<int(bit16)<<"个字节"<<endl;
					cout<<"下个第二字节读取地址为: "<<hex<<inf.tellg()<<endl;
					cout<<"总数为: "<<hex<<int(total)<<endl;
					// cin.get();
				}else{
					bit16^=0x8000;
					if(bit16==0){
						continue;
					}
					total+=bit16;
					inf.seekg(1,ios::cur);
					cout<<"第二个字节打印了"<<hex<<int(bit16)<<"个字节"<<endl;
					cout<<"下个第二字节读取地址为: "<<hex<<inf.tellg()<<endl;
					cout<<"总数为: "<<hex<<int(total)<<endl;
					// cin.get();
				}
			}
		}
		cout<<"总数为: "<<int(total)<<endl;	//最终结果为房间高*宽的二倍
		//搞不懂为何是2倍,明明应该是1倍
		
	}catch(string &es){
		cerr<<es;
		cin.get();
		exit(1);
	}
	
	cin.get();
	return 0;
}