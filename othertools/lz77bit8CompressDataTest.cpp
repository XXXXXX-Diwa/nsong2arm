#include <iostream>
#include <fstream>

using namespace std;
/**
*首先得到解压长度,然后检查读取的数据地址是否有0x8000000

*读取第一个字节,然后给予个变量=8,变量减一,检查是否为负,
*若为负,则再次读取第一个字节,然后给予变量=8 否则
*检查第一个字节是否没有7位
*没有的话读取第二个字节写入内存 总长度-1 检查总长度是否为0
*不为0的话第一个字节右移1h 然后继续变量-1,检查是否为负
*检查第一个字节是否没有7位... 

*若第一个字节有7位,读取第二个字节,算术右移4再加3 (去掉低位并+3)(len)
*再次读取第二个字节去掉高位,然后左移8h,读取第三个字节,orr前面
*处理的第二字节,该值加1.(内存向前偏移值)
*读取当前内存的前方(内存向前偏移),写进当前的内存地址,并指针下移
*len递减,只要len不为0,都继续写

*len为零后,第一个字节左移1位继续循环,只要8次循环还没结束

*每次写数据循环8次,直到达到1000h结束
*首字节位数代表了从什么时候开始进行之前的内存复写.当然此行为代表循环一次

*内存不复写的部分只是单字节的读写循环.最多8次,然后再次读取第一个字节
**/

//数据块在rom中的首尾要与4对齐 起码观察是如此的(未确认)
int main(int argc,char *const argv[]){
	ios::sync_with_stdio(false);
	try{
		if(argc==1){
			throw string("测试lz777 8bit\
			的数据长度是否正确的测试程序 v1.0 2020/6/28 by XXXXXX-Diwa");
		}
		ifstream inf(argv[1],ios::in|ios::binary);
		if(inf.fail()){
			throw string("无法阅读!");
		}
		uint32_t definelen;
		uint8_t bit1,byte8,len;
		uint16_t bit16;
		inf.seekg(4,ios::beg);
		inf.read((char*)&definelen,4);
		definelen>>=8;
		cout<<"解压总长度为: "<<hex<<int(definelen)<<endl;
		while(!inf.eof()){
			if(definelen==0){
				break;
			}
			bit1=inf.get();//读取第一个字节
			cout<<"第一个字节为: "<<hex<<int(bit1);
			cout<<"长度剩余: "<<hex<<int(definelen);
			cout<<"地址为: "<<hex<<inf.tellg();
			// cin.get();
			int i=8;
			while((--i)>=0){
				
				if((bit1&0x80)==0){
					byte8=inf.get();
					cout<<"要直接写入的第二个字节为: "<<hex<<int(byte8);
					// cin.get();
					--definelen;
				}else{
					len=inf.get();
					byte8=len;
					len>>=4;
					len+=3;
					cout<<"长度为: "<<hex<<int(len);
					// cin.get();
					
					byte8&=0xF;
					bit16=byte8;
					bit16<<=8;
					byte8=inf.get();
					bit16|=byte8;
					
					
					definelen-=len;	
					cout<<"剩余长度: "<<hex<<int(definelen)<<endl;
				}
				bit1<<=1;
				if(definelen==0){
					break;
				}
				
			}
		}
		cout<<"最终地址在 : "<<hex<<(int)inf.tellg();
		cin.get();
		inf.close();
	}catch(const string &es){
		cerr<<es;
		cin.get();
		exit(1);
	}
	
	
	return 0;
}