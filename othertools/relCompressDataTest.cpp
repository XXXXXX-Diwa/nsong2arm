#include <iostream>
#include <fstream>

using namespace std;


int main(int argc,char *const argv[]){
	ios::sync_with_stdio(false);
	try{
		if(argc==1){
			throw string("��ʱ����relѹ��������!");
		}
		ifstream inf(argv[1],ios::in|ios::binary);
		if(inf.fail()){
			throw string("�޷���ȡ�ļ�!");
		}
		inf.seekg(2,ios::beg);
		bool swibit=false;
		uint32_t total=0;
		uint16_t bit16;
		uint8_t ut8,bit1,byte8;
		ut8=inf.get();
		while(true){
			cout<<"��ǰ��ȡλ��Ϊ: "<<hex<<inf.tellg()<<endl;
			if(ut8==1){
				bit1=inf.get();
				cout<<"�ڶ����ֽ�Ϊ: "<<hex<<int(bit1)<<endl;
				// cin.get();

				if(bit1==0){
					if(swibit){
						cout<<"��λ��: "<<hex<<inf.tellg()<<"������!"<<endl;
						cin.get();
						break;
					}
					cout<<"��λ��: "<<hex<<inf.tellg()<<"���л�"<<endl;
					cin.get();
					swibit=true;
					ut8=inf.get();//�˴�����תΪ2bit����,ֻҪ��ֵ��Ϊ1
					//2bit���͵ĵڶ��ֽں͵����ֽ�ͬʱΪ0�Ż����,�ʽ�βΪ00 00
					//����ά��1bit����,��ڶ����ֽ��ٴ�Ϊ0�ͻ����
					
				}else if((bit1&0x80)==0){
					total+=bit1;
					inf.seekg(bit1,ios::cur);
					cout<<"�ڶ����ֽڴ�ӡ��"<<hex<<int(bit1)<<"���ֽ�"<<endl;
					cout<<"�¸��ڶ��ֽڶ�ȡ��ַΪ: "<<hex<<inf.tellg()<<endl;
					cout<<"����Ϊ: "<<hex<<int(total)<<endl;
					// cin.get();
				}else{
					bit1^=0x80;
					if(bit1==0){
						continue;
					}
					total+=bit1;
					inf.seekg(1,ios::cur);
					cout<<"�ڶ����ֽڴ�ӡ��"<<hex<<int(bit1)<<"���ֽ�"<<endl;
					cout<<"�¸��ڶ��ֽڶ�ȡ��ַΪ: "<<hex<<inf.tellg()<<endl;
					cout<<"����Ϊ: "<<hex<<int(total)<<endl;
					// cin.get();
				}
			}else{
				bit1=inf.get();
				byte8=inf.get();

				bit16=(bit1<<8)|byte8;
				cout<<"�ϲ��ĵڶ����ֽ�Ϊ: "<<hex<<int(bit16)<<endl;
				// cin.get();
				if(bit16==0){
					if(swibit){
						cout<<"��λ��: "<<hex<<inf.tellg()<<"������!"<<endl;
						break;
					}
					cout<<"��λ��: "<<hex<<inf.tellg()<<"���л�"<<endl;
					swibit=true;
					
				}else if((bit16&0x8000)==0){
					total+=bit16;
					inf.seekg(bit16,ios::cur);
					cout<<"�ڶ����ֽڴ�ӡ��"<<hex<<int(bit16)<<"���ֽ�"<<endl;
					cout<<"�¸��ڶ��ֽڶ�ȡ��ַΪ: "<<hex<<inf.tellg()<<endl;
					cout<<"����Ϊ: "<<hex<<int(total)<<endl;
					// cin.get();
				}else{
					bit16^=0x8000;
					if(bit16==0){
						continue;
					}
					total+=bit16;
					inf.seekg(1,ios::cur);
					cout<<"�ڶ����ֽڴ�ӡ��"<<hex<<int(bit16)<<"���ֽ�"<<endl;
					cout<<"�¸��ڶ��ֽڶ�ȡ��ַΪ: "<<hex<<inf.tellg()<<endl;
					cout<<"����Ϊ: "<<hex<<int(total)<<endl;
					// cin.get();
				}
			}
		}
		cout<<"����Ϊ: "<<int(total)<<endl;	//���ս��Ϊ�����*��Ķ���
		//�㲻��Ϊ����2��,����Ӧ����1��
		
	}catch(string &es){
		cerr<<es;
		cin.get();
		exit(1);
	}
	
	cin.get();
	return 0;
}