#include <iostream>
#include <io.h>
#include <cstdlib>
#include <vector>
#include <fstream>
#include <iomanip>
#include <algorithm>

using namespace std;

int curline=0;
string stage="";

[[noreturn]]void usage(){
    cerr<<"s(mid)file increase loop v1.0(19:08 2020/5/22) by: XXXXXX-Diwa"<<endl;
    cerr<<"������ �ļ���(s)..etc"<<endl;
    cin.get();
    exit(0);
}

const uint8_t g_d_time[]=
{
    96, // 0
    92, // 1
    90, // 2
    88, // 3
    84, // 4
    80, // 5
    78, // 6
    76, // 7
    72, // 8
    68, // 9
    66, // 10
    64, // 11
    60, // 12
    56, // 13
    54, // 14
    52, // 15
    48, // 16
    44, // 17
    42, // 18
    40, // 19
    36, // 20
    32, // 21
    30, // 22
    28, // 23
    24, // 24
};


class filego{
private:
    vector<string>fNames;
public:
    filego(){};
    filego(vector<string>s):fNames(s){
        vector<string>bf(0,"");
        for(uint16_t i=0;i<fNames.size();i++){
            if(access(fNames[i].c_str(),0)==-1){
                bf.push_back(fNames[i]);
                fNames.erase(fNames.begin()+i);
            }
        }
        for(uint16_t i=0;i<bf.size();i++){
            cerr<<"�ļ�:\""<<bf[i].c_str()<<"\"������"<<endl;
        }
        if(fNames.size()==0){
            cerr<<"û������һ����Ч���ļ�!"<<endl;
            usage();
        }
    }
    void fileInfo(){
        for(uint16_t i=0;i<fNames.size();i++){
            ifstream inf(fNames[i].c_str(),ios::in);
            if(inf.fail()){
                cerr<<"�ļ�: \""<<fNames[i].c_str()<<"\"��ʧ��!"<<endl;
                usage();
            }
            string s;
			stage="���Label�׶�";
            char c[100];
            for(int j=0;j<3;j++){
                inf.getline(c,100);
				++curline;
            }
            string fLabel=getLabel(c);
            if(fLabel==""){
                cout<<"�ļ�:\""<<fNames[i].c_str()<<"\"���Ǳ�׼.s�ļ�!"<<endl;
                fNames.erase(fNames.begin()+i);
                if(fNames.size()==0){
                    usage();
                }
                continue;
            }
            uint16_t stage_max=0;
            uint16_t stage_min=255;
            uint16_t s_time=0;
            uint16_t n=256;
            vector<uint8_t>stages(0,0);
            /**�ó����stage����Сstage�Լ�����stage*/
			stage="������stage����Сstage�׶�";
            do{
                inf.getline(c,100);
				++curline;
                if(c[0]=='@'&&c[1]==' '){
                    s=string(c).substr(2,5);
                    n=strtol(s.c_str(),NULL,10);
                    if(stage_max==0||n>=stage_max){
                        stage_max=n;
                    }
                }else if(c[1]=='.'&&c[2]=='b'&&c[7]=='F'){
                    fill(c,c+100,0);
                    stages.push_back(n);
                    if(n<stage_min){
                        stage_min=n;
                    }
                }
            }while(!inf.eof());
            inf.close();
            inf.clear();
            inf.open(fNames[i].c_str(),ios::in);
			curline=0;
            /**������stage�ϵó���ʱ*/
			stage="����stage�ó���׶�";
            do{
                inf.getline(c,100);
				++curline;
                 if(c[0]=='@'&&c[1]==' '){
                    s=string(c).substr(2,5);
                    n=strtol(s.c_str(),NULL,10);
                    if(n==stage_max){
                        uint16_t time=0;
                        do{
                            inf.getline(c,100);
							++curline;
                            if(c[1]=='.'&&c[2]=='b'){
                                if(c[7]=='W'){
                                    s=string(c).substr(8,10);
                                    time+=strtol(s.c_str(),NULL,10);
                                    if(time==96){
                                        s_time=96;
                                        break;
                                    }
                                }else if(c[7]=='F'){
                                    if(time>s_time){
                                        s_time=time;
                                    }
                                    break;
                                }
                            }

                        }while(!inf.eof());
                    }
                 }

            }while(!inf.eof());
            inf.close();
            inf.clear();
            inf.open(fNames[i].c_str(),ios::in);
			curline=0;
			/**̽�������Ƿ�Ҫ����*/
			// uint8_t average_vol=0;
			// uint16_t vol_count=0;
			// stage="̽�������Ƿ�Ҫ�����׶�";
			// do{
			// 	inf.getline(c,100);
			// 	++curline;
			// 	if(c[8]=='V'&&c[9]=='O'&&c[10]=='L'){
			// 		s=string(c).substr(16,18);
			// 		vol_count+=strtol(s.c_str(),NULL,10);
			// 		average_vol++;
			// 	}
			// }while(!inf.eof());
			// average_vol=vol_count/average_vol;

			// inf.close();
            // inf.clear();
			// curline=0;
            // inf.open(fNames[i].c_str(),ios::in);

            string outfolder=getFilePath(fNames[i])+"\\sfileout";
            mkdir(outfolder.c_str());
            string outfile=outfolder+"\\"+fLabel+".s";
            ofstream outf(outfile.c_str(),ios::out);
            if(outf.fail()){
                cerr<<"�ļ�: \""<<outfile.c_str()<<"\"����ʧ��"<<endl;
                usage();
            }

            /**�޸������Ĳ���*/
			// stage="�޸������׶�";
            // uint8_t add_len=(onlyName(fNames[i])).size();
            // if(average_vol>80){//ƽ����������80��Ҫ����
            //     do{
            //         inf.getline(c,100);
			// 		++curline;
            //         if(c[7+add_len]=='m'){
            //             s=string(c).substr(12+add_len,14+add_len);
            //             if(strtol(s.c_str(),NULL,10)==127){
            //                 s=onlyName(fNames[i]);
            //                 outf<<"	.equ	"<<s.c_str()<<"_mvl, 64"<<endl;
            //                 break;
            //             }else{
			// 				outf<<c<<endl;
			// 			}
            //         }else if(c[0]=='@'&&c[1]=='*'){
            //             outf<<c<<endl;
            //             break;
            //         }else{
            //             outf<<c<<endl;
            //         }

            //     }while(!inf.eof());
            // }
			stage="��ʽת���׶�";
            for(uint16_t k=0;k<stages.size();k++){//���ѭ��
                /**start*/
                do{
                    bool j_double=false;
                    inf.getline(c,100);
					++curline;
                    vector<uint8_t>remainder(0,0);
                    if(c[0]=='@'&&c[1]==' '){//stage��־
                        s=string(c).substr(2,5);
                        n=strtol(s.c_str(),NULL,10);//�õ�stage��
                        if(n==0){//��stage��ӡloop label
                            outf<<fLabel.c_str()<<"_loop_"<<int(k+1)<<":"<<endl;
                        }//������stage���չ�ʲ��������ж�
                        if(n==stages[k]){//��ǰstage���ֹ����stage
                            outf<<c<<endl;
                            int time=0;
                            //�ֹ����stage����ȫ�����stage
                            if(stages[k]<stage_max){
                                while(true){
                                    inf.getline(c,100);
									++curline;
                                    if(c[1]=='.'&&c[2]=='b'){//.byte����ж�
                                        if(c[7]=='W'){//wait���
                                            s=string(c).substr(8,10);
                                            n=strtol(s.c_str(),NULL,10);//��ȡwait����
                                            time+=n;//�ۻ�
                                            outf<<c<<endl;
                                        }else if(c[7]=='F'){//FINE���(����)
                                            j_double=true;//�����������

                                            time=96-time;
                                            if(time<96){//ʣ��wait���ֲ�Ϊ0���ӡʣ�µ�
                                                while(time){
                                                    if(time<=24){
                                                        remainder.push_back(time);
                                                        break;
                                                    }
                                                    for(uint16_t h=0;h<25;h++){
                                                        if(time>=g_d_time[h]){
                                                            remainder.push_back(g_d_time[h]);
                                                            time-=g_d_time[h];
                                                            break;
                                                        }

                                                    }
                                                }
                                                //��ӡ�ռ���wait time
                                                while(remainder.size()){
                                                    outf<<"	.byte	W"<<setw(2)<<setfill('0')
                                                    <<(int)remainder.back()<<endl;
                                                    remainder.pop_back();
                                                }

                                            }else{//ʣ��wait����Ϊ0���ӡW96
                                                outf<<"	.byte	W96"<<endl;
                                            }
                                            //��ӡʣ�µ�stage �������һ��
                                            for(uint16_t h=0;h<stage_max-stages[k]-1;h++){
                                                outf<<"@ "<<setw(3)<<setfill('0')<<int(stages[k]+h+1)
                                                <<"   ----------------------------------------"<<endl;
                                                outf<<"	.byte	W96"<<endl;
                                            }
                                            //��ӡ���һ��stage
                                            outf<<"@ "<<setw(3)<<setfill('0')<<int(stage_max)
                                            <<"   ----------------------------------------"<<endl;
                                            //��ӡ����wait time
                                            time=s_time;
                                            while(time){
                                                    if(time<=24){
                                                        remainder.push_back(time);
                                                        break;
                                                    }
                                                    for(uint16_t h=0;h<25;h++){
                                                        if(time>=g_d_time[h]){
                                                            remainder.push_back(g_d_time[h]);
                                                            time-=g_d_time[h];
                                                            break;
                                                        }
                                                    }
                                                }
                                            //��ӡwait time
                                            while(remainder.size()){
                                                outf<<"	.byte	W"<<setw(2)<<setfill('0')
                                                <<(int)remainder.back()<<endl;
                                                remainder.pop_back();
                                            }
                                            //��ӡѭ��label
                                            outf<<"	.byte	GOTO"<<endl;
                                            outf<<"	 .word	"<<fLabel.c_str()<<"_loop_"<<int(k+1)<<endl;
                                            outf<<"	.byte	FINE"<<endl;
                                            break;
                                        }else{//��.byte��ǵ��Ƿ�W��F��ǵĴ�ӡ
                                            outf<<c<<endl;
                                        }
                                    }else{//��.byte��ǵ��Ƿ�W��F��ǵĴ�ӡ
                                            outf<<c<<endl;
                                        }
                                }

                            }else{
                                while(true){
                                    inf.getline(c,100);
									++curline;
                                    if(c[1]=='.'&&c[2]=='b'){//.byte����ж�
                                        if(c[7]=='W'){//wait���
                                            s=string(c).substr(8,10);
                                            n=strtol(s.c_str(),NULL,10);//��ȡwait����
                                            time+=n;//�ۻ�
                                            outf<<c<<endl;
                                        }else if(c[7]=='F'){//FINE���(����)
                                            j_double=true;//�����������
                                            time=s_time-time;
                                            if(time>0){//ʣ��wait���ֲ�Ϊ0���ӡʣ�µ�
                                                while(time){
                                                    if(time<=24){
                                                        remainder.push_back(time);
                                                        break;
                                                    }
                                                    for(uint16_t h=0;h<25;h++){
                                                        if(time>=g_d_time[h]){
                                                            remainder.push_back(g_d_time[h]);
                                                            time-=g_d_time[h];
                                                            break;
                                                        }
                                                    }
                                                }
                                                //��ӡ�ռ���wait time
                                                while(remainder.size()){
                                                    outf<<"	.byte	W"<<setw(2)<<setfill('0')
                                                    <<(int)remainder.back()<<endl;
                                                    remainder.pop_back();
                                                }

                                            }
                                            //��ӡѭ��label
                                            outf<<"	.byte	GOTO"<<endl;
                                            outf<<"	 .word	"<<fLabel.c_str()<<"_loop_"<<int(k+1)<<endl;
                                            outf<<"	.byte	FINE"<<endl;
                                            break;
                                        }else{//��.byte��ǵ��Ƿ�W��F��ǵĴ�ӡ
                                            outf<<c<<endl;
                                        }
                                    }else{//��.byte��ǵ��Ƿ�W��F��ǵĴ�ӡ
                                            outf<<c<<endl;
                                        }
                                }

                            }

                            if(j_double){//FINE�˽����¹�
                                break;
                            }
                        }else{
                            outf<<c<<endl;
                        }

                    }else{//��stage��
                        outf<<c<<endl;//ֱ�Ӵ�ӡ
                    }
                }while(!inf.eof());

               /**end*/
            }
            //�����ļ�ʣ�µ�����
            do{
                inf.getline(c,100);
				++curline;
                outf<<c<<endl;
            }while(!inf.eof());
            cout<<"�ļ�: \""<<fLabel.c_str()<<".s\"ת�����!\n"<<endl;
            inf.close();
            outf.close();
            //������
            inf.clear();
            outf.clear();
			curline=0;

        }
    }

    ~filego(){
        cerr<<"ȫ���ļ�ת�����!\n";
    }

    string onlyName(string s){
        size_t pos=s.find_last_of('\\');
        if(pos>0&&pos!=string::npos){
            s=s.substr(pos+1);
        }
        pos=s.find_last_of('.');
        if(pos>0&&pos!=string::npos){
            return s.substr(0,pos);
        }
        return s;
    }

    string getFilePath(string s){
        size_t pos=s.find_last_of('\\');
        if(pos>0&&pos!=string::npos){
            return s.substr(0,pos);
        }
        return s;
    }

    string getLabel(string s){
        size_t pos=s.find_last_of('_');
        if(pos>0&&pos!=string::npos){
            s=s.substr(0,pos);
        }else{
            return "";
        }
        pos=s.find_first_of('.');
        if(pos>0&&pos!=string::npos){
            return s.substr(pos+5);
        }else{
            return "";
        }
    }

};
int main(int argc,char** argv){
	ios::sync_with_stdio(false);
	try{
		filego* file;
		if(argc>1){
			vector<string>s(0,"");
			for(int i=1;i<argc;i++){
				s.push_back(argv[i]);
			}
			file=new filego(s);
		}else{
			usage();
		}
		file->fileInfo();

		delete file;
	}catch(exception &e){
		cerr<<stage<<": ";
		cerr<<"��"<<setw(4)<<setfill('0')<<curline<<"�н������ִ���!";
		cin.get();
		exit(1);
	}
    return 0;
}
