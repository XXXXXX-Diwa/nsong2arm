#include <iostream>
#include <fstream>

using namespace std;
/**
*���ȵõ���ѹ����,Ȼ�����ȡ�����ݵ�ַ�Ƿ���0x8000000

*��ȡ��һ���ֽ�,Ȼ����������=8,������һ,����Ƿ�Ϊ��,
*��Ϊ��,���ٴζ�ȡ��һ���ֽ�,Ȼ��������=8 ����
*����һ���ֽ��Ƿ�û��7λ
*û�еĻ���ȡ�ڶ����ֽ�д���ڴ� �ܳ���-1 ����ܳ����Ƿ�Ϊ0
*��Ϊ0�Ļ���һ���ֽ�����1h Ȼ���������-1,����Ƿ�Ϊ��
*����һ���ֽ��Ƿ�û��7λ... 

*����һ���ֽ���7λ,��ȡ�ڶ����ֽ�,��������4�ټ�3 (ȥ����λ��+3)(len)
*�ٴζ�ȡ�ڶ����ֽ�ȥ����λ,Ȼ������8h,��ȡ�������ֽ�,orrǰ��
*����ĵڶ��ֽ�,��ֵ��1.(�ڴ���ǰƫ��ֵ)
*��ȡ��ǰ�ڴ��ǰ��(�ڴ���ǰƫ��),д����ǰ���ڴ��ַ,��ָ������
*len�ݼ�,ֻҪlen��Ϊ0,������д

*lenΪ���,��һ���ֽ�����1λ����ѭ��,ֻҪ8��ѭ����û����

*ÿ��д����ѭ��8��,ֱ���ﵽ1000h����
*���ֽ�λ�������˴�ʲôʱ��ʼ����֮ǰ���ڴ渴д.��Ȼ����Ϊ����ѭ��һ��

*�ڴ治��д�Ĳ���ֻ�ǵ��ֽڵĶ�дѭ��.���8��,Ȼ���ٴζ�ȡ��һ���ֽ�
**/

//���ݿ���rom�е���βҪ��4���� ����۲�����˵�(δȷ��)
int main(int argc,char *const argv[]){
	ios::sync_with_stdio(false);
	try{
		if(argc==1){
			throw string("����lz777 8bit\
			�����ݳ����Ƿ���ȷ�Ĳ��Գ��� v1.0 2020/6/28 by XXXXXX-Diwa");
		}
		ifstream inf(argv[1],ios::in|ios::binary);
		if(inf.fail()){
			throw string("�޷��Ķ�!");
		}
		uint32_t definelen;
		uint8_t bit1,byte8,len;
		uint16_t bit16;
		inf.seekg(4,ios::beg);
		inf.read((char*)&definelen,4);
		definelen>>=8;
		cout<<"��ѹ�ܳ���Ϊ: "<<hex<<int(definelen)<<endl;
		while(!inf.eof()){
			if(definelen==0){
				break;
			}
			bit1=inf.get();//��ȡ��һ���ֽ�
			cout<<"��һ���ֽ�Ϊ: "<<hex<<int(bit1);
			cout<<"����ʣ��: "<<hex<<int(definelen);
			cout<<"��ַΪ: "<<hex<<inf.tellg();
			// cin.get();
			int i=8;
			while((--i)>=0){
				
				if((bit1&0x80)==0){
					byte8=inf.get();
					cout<<"Ҫֱ��д��ĵڶ����ֽ�Ϊ: "<<hex<<int(byte8);
					// cin.get();
					--definelen;
				}else{
					len=inf.get();
					byte8=len;
					len>>=4;
					len+=3;
					cout<<"����Ϊ: "<<hex<<int(len);
					// cin.get();
					
					byte8&=0xF;
					bit16=byte8;
					bit16<<=8;
					byte8=inf.get();
					bit16|=byte8;
					
					
					definelen-=len;	
					cout<<"ʣ�೤��: "<<hex<<int(definelen)<<endl;
				}
				bit1<<=1;
				if(definelen==0){
					break;
				}
				
			}
		}
		cout<<"���յ�ַ�� : "<<hex<<(int)inf.tellg();
		cin.get();
		inf.close();
	}catch(const string &es){
		cerr<<es;
		cin.get();
		exit(1);
	}
	
	
	return 0;
}