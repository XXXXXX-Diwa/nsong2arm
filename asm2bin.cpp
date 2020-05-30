#include <iostream>
#include <vector>
#include <algorithm>
#include <io.h>
#include <map>
#include <fstream>
#include <cstdlib>
#include <iomanip>
#include <memory.h>

using namespace std;

int ns=0;//label����

const uint8_t waitime[]=//������NOTE �� ʡ�ĸ�������
{
    0,	//0
    1,	//1
    2,	//2
    3,	//3
    4,	//4
    5,	//5
    6,	//6
    7,	//7
    8,	//8
    9,	//9
    10,	//10
    11,	//11
    12,	//12
    13,	//13
    14,	//14
    15,	//15
    16,	//16
    17,	//17
    18,	//18
    19,	//19
    20,	//20
    21,	//21
    22,	//22
    23,	//23
    24,	//24
    0,	
    0,	
    0,	
    25,	//28
    0,	
    26,	//30
    0,	
    27,	//32
    0,	
    0,	
    0,	
    28,	//36
    0,	
    0,	
    0,	
    29,	//40
    0,	
    30,	//42
    0,	
    31,	//44
    0,	
    0,	
    0,	
    32,	//48
    0,	
    0,	
    0,	
    33,	//52
    0,	
    34,	//54
    0,	
    35,	//56
    0,	
    0,	
    0,	
    36,	//60
    0,	
    0,	
    0,	
    37,	//64
    0,	
    38,	//66
    0,	
    39,	//68
    0,	
    0,	
    0,	
    40,	//72
    0,	
    0,	
    0,	
    41,	//76
    0,	
    42,	//78
    0,	
    43,	//80
    0,	
    0,	
    0,	
    44,	//84
    0,	
    0,	
    0,	
    45,	//88
    0,	
    46,	//90
    0,	
    47,	//92
    0,	
    0,	
    0,	
    48,	//96
};

const string keys[]=
{
    "CnM2",	//0		
    "CsM2",	//1		
    "DnM2",	//2		
    "DsM2",	//3		
    "EnM2",	//4		
    "FnM2",	//5		
    "FsM2",	//6		
    "GnM2",	//7		
    "GsM2",	//8		
    "AnM2",	//9		
    "AsM2",	//10		
    "BnM2",	//11		
    "CnM1",	//12		
    "CsM1",	//13		
    "DnM1",	//14		
    "DsM1",	//15		
    "EnM1",	//16		
    "FnM1",	//17		
    "FsM1",	//18		
    "GnM1",	//19		
    "GsM1",	//20		
    "AnM1",	//21		
    "AsM1",	//22		
    "BnM1",	//23		
    "Cn0",	//24		
    "Cs0",	//25		
    "Dn0",	//26		
    "Ds0",	//27		
    "En0",	//28		
    "Fn0",	//29		
    "Fs0",	//30		
    "Gn0",	//31		
    "Gs0",	//32		
    "An0",	//33		
    "As0",	//34		
    "Bn0",	//35		
    "Cn1",	//36		
    "Cs1",	//37		
    "Dn1",	//38		
    "Ds1",	//39		
    "En1",	//40		
    "Fn1",	//41		
    "Fs1",	//42		
    "Gn1",	//43		
    "Gs1",	//44		
    "An1",	//45		
    "As1",	//46		
    "Bn1",	//47		
    "Cn2",	//48		
    "Cs2",	//49		
    "Dn2",	//50		
    "Ds2",	//51		
    "En2",	//52		
    "Fn2",	//53		
    "Fs2",	//54		
    "Gn2",	//55		
    "Gs2",	//56		
    "An2",	//57		
    "As2",	//58		
    "Bn2",	//59		
    "Cn3",	//60		
    "Cs3",	//61		
    "Dn3",	//62		
    "Ds3",	//63		
    "En3",	//64		
    "Fn3",	//65		
    "Fs3",	//66		
    "Gn3",	//67		
    "Gs3",	//68		
    "An3",	//69		 440Hz
    "As3",	//70		
    "Bn3",	//71		
    "Cn4",	//72		
    "Cs4",	//73		
    "Dn4",	//74		
    "Ds4",	//75		
    "En4",	//76		
    "Fn4",	//77		
    "Fs4",	//78		
    "Gn4",	//79		
    "Gs4",	//80		
    "An4",	//81		
    "As4",	//82		
    "Bn4",	//83		
    "Cn5",	//84		
    "Cs5",	//85		
    "Dn5",	//86		
    "Ds5",	//87		
    "En5",	//88		
    "Fn5",	//89		
    "Fs5",	//90		
    "Gn5",	//91		
    "Gs5",	//92		
    "An5",	//93		
    "As5",	//94		
    "Bn5",	//95		
    "Cn6",	//96		
    "Cs6",	//97		
    "Dn6",	//98		
    "Ds6",	//99		
    "En6",	//100		
    "Fn6",	//101		
    "Fs6",	//102		
    "Gn6",	//103		
    "Gs6",	//104		
    "An6",	//105		
    "As6",	//106		
    "Bn6",	//107		
    "Cn7",	//108		
    "Cs7",	//109		
    "Dn7",	//110		
    "Ds7",	//111		
    "En7",	//112		
    "Fn7",	//113		
    "Fs7",	//114		
    "Gn7",	//115		
    "Gs7",	//116		
    "An7",	//117		
    "As7",	//118		
    "Bn7",	//119		
    "Cn8",	//120		
    "Cs8",	//121		
    "Dn8",	//122		
    "Ds8",	//123		
    "En8",	//124		
    "Fn8",	//125		
    "Fs8",	//126		
    "Gn8",	//127		
};

struct headat{
    uint32_t table;
    uint32_t songroup;
    uint8_t trackn;
    uint8_t unknow;
    uint8_t priority;
    uint8_t echo;
    uint32_t voice_group;
    uint32_t trackoft[16];  
}head;

static string rmexception(string s){
    size_t pos=s.find_last_of('.');
    if(pos>0&&pos!=string::npos){
        return s.substr(0,pos);
    } throw "�ļ�: \""+s+"\"����.s�ļ�!";
}
/**
 * .s file��ÿ��track dataת��Ϊbin data
 * */
static void cur_track_data_write(ifstream &nf,ofstream &of,map<string,uint32_t> &lb,map<string,uint8_t> &sdef,map<string,uint8_t> &kmap){
    string lis;
    uint32_t bit32;
    uint8_t bit8;
    char ch;
    size_t pos;
    string nus;
    map<string,uint8_t>::iterator it;

    pair<map<string,uint32_t>::iterator,bool> in_pair;
    
    while(!nf.eof()){
        getline(nf,lis);
        if(lis[lis.size()-1]==':'){
            //label��Ϊkey,�����ַ��Ϊֵ
            in_pair=lb.insert(pair<string,uint32_t>(lis.substr(0,lis.size()-1),of.tellp()|0x8000000));
            if(in_pair.second==false){
                throw "key:\""+lis+" -> "+to_string(of.tellp())+"\"����mapʧ��!";
            }
        }else if(lis[1]=='.'){//.byte
            ch=lis[7];
            switch(ch){
                case 'W'://wait
                nus=lis.substr(8,2);
                bit8=strtol(nus.c_str(),NULL,10);
                bit8=waitime[bit8]+0x80;
                if(bit8>0xb0){
                    throw "����: \""+lis+"\"�쳣!";
                }
                of<<(char)bit8;
                break;

                case 'F'://fine ��ǰtrack�Ľ���
                of<<(char)0xb1;
                return;
                break;

                case 'G'://goto
                of<<(char)0xb2;
                break;

                case 'P':
                ch=lis[8];
                if(ch=='A'){
                    of<<(char)0xb3;//pattern play
                }else if(ch=='E'){
                    of<<(char)0xb4;//pattern end
                }else if(ch=='R'){
                    of<<(char)0xba;//priority
                    throw "����: \""+lis+"\"����!";
                }else {
                    throw "����: \""+lis+"\"�쳣!";
                }
                break;

                case 'R'://repeat
                of<<(char)0xb5;
                throw "����: \""+lis+"\"����!";
                break;

                case 'M'://memacc op adr dat ***lib
                of<<(char)0xb9;
                throw "����: \""+lis+"\"����!";
                break;

                case 'T'://tempo (BPM/2)
                of<<(char)0xbb;
                bit8=strtol((lis.substr(15,3)).c_str(),NULL,10);
                pos=lis.find_last_of('*');
                if(pos<1||pos==string::npos){
                    throw "����: \""+lis+"\"�쳣!";
                }
                nus=lis.substr(pos+1,ns+4);
                // map<string,uint8_t>::iterator it;
                it=sdef.find(nus);
                if(it==sdef.end()){
                    throw "����: \""+lis+"\"�쳣!";
                }
                bit32=bit8*it->second;
                pos=lis.find_last_of('/');
                if(pos<1||pos==string::npos){
                    throw "����: \""+lis+"\"�쳣!";
                }
                bit8=strtol((lis.substr(pos+1)).c_str(),NULL,10);
                bit32/=bit8;
                if(bit32>0xff){
                    throw "����: \""+lis+"\"�쳣!";
                }
                of<<(char)bit32;
                break;

                case 'K'://key shift
                of<<(char)0xbc;
                nus=lis.substr(15,ns+4);
                // cout<<"keysh��ı�ǩΪ"<<nus<<endl;
                // map<string,uint8_t>::iterator it;
                it=sdef.find(nus);
                if(it!=sdef.end()){
                    pos=lis.find_last_of('+');
                    bit8=strtol((lis.substr(pos+2)).c_str(),NULL,10);
                    bit8+=it->second;
                    of<<(char)bit8;
                }else{
                    throw "����: \""+lis+"\"�쳣!";
                }
                break;

                case '	':
                ch=lis[8];
                switch(ch){
                    case 'V':
                    
                    pos=lis.find_last_of(',');
                    if(pos<1||pos==string::npos){
                        throw "����: \""+lis+"\"�쳣!";
                    }
                    bit8=strtol((lis.substr(pos+2,3)).c_str(),NULL,10);
                    if(bit8>0x7F){
                        throw "����: \""+lis+"\"�쳣!";
                    }
                    ch=lis[10];
                    if(ch=='I'){//voice # (�൱��ʵ�ʵ�base note)
                        of<<(char)0xbd;
                        of<<(char)bit8;
                    }else if(ch=='L'){//volume
                        of<<(char)0xbe;
                        pos=lis.find_last_of('/');
                        if(pos<1||pos==string::npos){
                            throw "����: \""+lis+"\"�쳣!";
                        }
                        nus=lis.substr(pos-4-ns,ns+4);
                        it=sdef.find(nus);
                        if(it==sdef.end()){
                            throw "key:\""+nus+"\" �Ҳ�����Ӧ��ֵ!";
                        }
                        bit32=it->second*bit8;
                        bit8=bit32/0x7F;
                        of<<(char)bit8;    
                    }else{
                        throw "����: \""+lis+"\"�쳣!";
                    }



                    
                    break;

                    case 'P'://panpot (c_v+??)
                    of<<(char)0xbf;
                    pos=lis.find_last_of(',');
                    if(pos<1||pos==string::npos){
                        throw "����: \""+lis+"\"�쳣!";
                    }
                    bit8=strtol((lis.substr(pos+6)).c_str(),NULL,10);
                    ch=lis[pos+5];
                    if(ch=='-'){
                        bit8=64-bit8;
                    }else if(ch=='+'){
                        bit8+=64;
                    }else{
                        throw "����: \""+lis+"\"�쳣!";
                    }
                    of<<(char)bit8;
                    break;

                    case 'B':
                    ch=lis[12];
                    if(ch==' '){//pitch bend (c_v+??)
                        of<<(char)0xc0;
                        pos=lis.find_last_of(',');
                        if(pos<1||pos==string::npos){
                            throw "����: \""+lis+"\"�쳣!";
                        }
                        bit8=strtol((lis.substr(pos+6)).c_str(),NULL,10);
                        ch=lis[pos+5];
                        if(ch=='+'){
                            bit8+=64;
                        }else if(ch=='-'){
                            bit8=64-bit8;
                        }else{
                            throw "����: \""+lis+"\"�쳣!";
                        }
                        of<<(char)bit8;
                    }else if(ch=='R'){//bend range
                        of<<(char)0xc1;
                        pos=lis.find_last_of(',');
                        bit8=strtol((lis.substr(pos+2)).c_str(),NULL,10);
                        of<<(char)bit8;
                        throw "����: \""+lis+"\"����!";
                    }else{
                        throw "����: \""+lis+"\"�쳣!";
                    }
                    break;

                    case 'L':
                    ch=lis[11];
                    if(ch=='S'){//LFO speed
                        of<<(char)0xc2;
                    }else if(ch=='D'){
                        of<<(char)0xc3;
                        throw "����: \""+lis+"\"����!";
                    }else{
                        throw "����: \""+lis+"\"�쳣!";
                    }
                    pos=lis.find_last_of(',');
                    bit8=strtol((lis.substr(pos+2)).c_str(),NULL,10);
                    of<<(char)bit8;
                    break;

                    case 'M':
                    ch=lis[14];
                    if(ch==','){//modulation depth
                        of<<(char)0xc4;
                    }else if(ch=='T'){//modulation type
                        of<<(char)0xc5;                    
                    }else{
                        throw "����: \""+lis+"\"�쳣!";
                    }
                    pos=lis.find_last_of(',');
                    bit8=strtol((lis.substr(pos+2)).c_str(),NULL,10);
                    of<<(char)bit8;  
                    break;

                    case 'X'://extend command ***lib
                    of<<(char)0xc9;
                    throw "����: \""+lis+"\"����!";
                    break;

                    case 'x':
                    ch=lis[12];
                    if(ch=='V'){//imi.echo vol ***lib 
                        of<<(char)0x08;
                    }else if(ch=='L'){//imi.echo len ***lib
                        of<<(char)0x09;
                    }else{
                        throw "����: \""+lis+"\"�쳣!";
                    }
                    throw "����: \""+lis+"\"����!";
                    break;

                    //����β����ͬ���ļ���ж�,������
                    case 'N'://NOTE
                    case 'E'://end of Tie
                    case 'T'://Tie
                    if(ch=='N'){
                        bit8=strtol((lis.substr(9,2)).c_str(),NULL,10);
                        bit32=waitime[bit8]+0xcf;
                        if(bit32>0xff){
                            throw "����: \""+lis+"\"�쳣!";
                        }
                        of<<(char)bit32;
                    }else if(ch=='E'){
                        of<<(char)0xce;
                    }else if(ch=='T'){
                        ch=lis[9];
                        if(ch=='I'){
                            of<<(char)0xcf;
                        }else if(ch=='U'){
                            of<<(char)0xc8;
                            throw "����: \""+lis+"\"����!";
                        }else{
                            throw "����: \""+lis+"\"�쳣!";
                        }   
                    }else{
                        throw "����: \""+lis+"\"�쳣!";
                    }
                    bit8=lis.size();
                    if(bit8<15){
                        break;
                    }
                    nus=lis.substr(16,4);
                    if(nus[3]==' '){
                        nus=nus.substr(0,3);
                    }
                    it=kmap.find(nus);
                    if(it==kmap.end()){
                        throw "key:\""+nus+"\" �Ҳ�����Ӧ��ֵ!";
                    }
                    of<<(char)it->second;
                    if(bit8<21){
                        break;
                    }
                    bit8=strtol((lis.substr(23)).c_str(),NULL,10);
                    of<<(char)bit8;  
                    break;

                    case ' ':
                    if(lis.size()<15){
                        throw "����: \""+lis+"\"�쳣!";
                    }
                    if(lis[16]=='c'){
                        bit8=strtol((lis.substr(20)).c_str(),NULL,10);
                        if(lis[19]=='+'){
                            bit8+=64;
                        }else if(lis[19]=='-'){
                            bit8=64-bit8;
                        }else{
                            throw "����: \""+lis+"\"�쳣!";
                        }
                        of<<(char)bit8;
                    }else{
                        nus=lis.substr(16,4);
                        pos=lis.find_last_of('*');
                        if(pos<1||pos==string::npos){
                            if(nus[3]==' '){
                                nus=nus.substr(0,3);
                            }
                            it=kmap.find(nus);
                            if(it!=kmap.end()){//��ĸ��ͷ�ļ���
                                of<<(char)it->second;
                                pos=lis.find_last_of(',');
                                if(pos<1||pos==string::npos){
                                    break;
                                }
                                bit8=strtol((lis.substr(pos+3)).c_str(),NULL,10);
                                of<<(char)bit8;
                            }else{
                                throw "����: \""+lis+"\"�쳣!";
                            }
                        }else{
                            bit8=strtol(nus.c_str(),NULL,10);
                            pos=lis.find_last_of('/');
                            if(pos<1||pos==string::npos){
                                throw "����: \""+lis+"\"�쳣!1";
                            }
                            nus=lis.substr(pos-ns-4,ns+4);
                            it=sdef.find(nus);
                            if(it==sdef.end()){
                                throw "����: \""+lis+"\"�쳣!2";
                            }
                            bit32=bit8*it->second;
                            bit8=bit32/0x7f;
                            of<<(char)bit8;
                        }
                    }
                    break;

                    default:
                    throw "����: \""+lis+"\"�쳣!";
                    break;

                }
                break;

                default:
                throw "����: \""+lis+"\"�쳣!";
                break;
            }
        /*��ӡ4�ֽڵ�ַ��*/
        }else if(lis[2]=='.'){//.word
            lis=lis.substr(8);
            map<string,uint32_t>::iterator itw;
            itw=lb.find(lis);
            if(itw!=lb.end()){
                of.write((char*)&itw->second,4); 
            }else{
                throw "�Ҳ���label: \""+lis+"\"��Ӧ������!";
            }
        }

    }
}
static string get_label(string s){
    size_t pos=s.find_last_of('\\');
    if(pos>0&&pos!=string::npos){
        return s.substr(pos+1);
    }
    return s;
}
int main(int argc,char* const argv[]){
    ios::sync_with_stdio(false);//�ر���ͬ��


	if(argc==1){
		cerr<<"s(mid)file to binary v1.0(23:00 2020/5/30) by: XXXXXX-Diwa"<<endl;
		cerr<<"������ �ļ���(s)..etc"<<endl;
		exit(0);
	}

    try{
        string ls,fn;//��ȡһ�к��ļ���label
        /**
         * key map���� �������
         * */
        map<string,uint8_t> key_map;
        pair<map<string,uint8_t>::iterator,bool> key_pair;
        for(uint8_t i=0;i<128;++i){
            key_pair=key_map.insert(map<string,uint8_t>::value_type(keys[i],i));
            if(!key_pair.second){
                throw "key:\""+keys[i]+" -> "+to_string(i)+"\"����mapʧ��!";
            }
        }
        
        /**
         * ���.sԴ�ļ��Ƿ����
         * */
        for(int i=1;i<argc;++i){
            if(access(argv[i],0)==-1){
                throw "�ļ�: \""+string(argv[i])+"\"������!";
            }
        }
        /**
         * ת��ÿ��.sΪ.bin
         * */
        for(int i=1;i<argc;++i){
            /*��Ҫ�Ĳ���*/
            vector<uint32_t>trackoft;//ÿ��ĵ�ַ
            map<string,uint32_t>blabel;//��תlabel���ַ
            
            /*���ļ�*/
            string outfn=rmexception(argv[i]);
            fn=get_label(outfn);
            ns=fn.size();
            ifstream inf(argv[i],ios::in);
            if(inf.fail()){
                throw "�ļ�: \""+outfn+".s\"�޷��Ķ�!";
            }
            ofstream outf((outfn+".bin").c_str(),ios::out|ios::binary);
            if(outf.fail()){
                 throw "�ļ�: \""+outfn+".bin\"�޷�����!";
            }
            /*Ԥ�趨��д��ͷ����*/
            memset(&head,0,sizeof(head));
            head.table=0x8000008;
            head.songroup=0x0;
            head.trackn=0;
            head.unknow=0;
            head.priority=0;
            head.echo=0;
            head.voice_group=0x0;
            
            outf.write((char*)&head,sizeof(head));

            /*��ȡsong_def map*/
            map<string,uint8_t> song_def;
            pair<map<string,uint8_t>::iterator,bool> def_pair;
            do{
                getline(inf,ls);
                char c=ls[7+ns];
                if(c=='m'||c=='p'||c=='r'||c=='k'||c=='t'||c=='e'||c=='c'){
                    size_t po=ls.find_last_of(',');
                    uint16_t mvl=strtol(ls.substr(po+2).c_str(),NULL,10);
                    ls=ls.substr(6,ns+4);
                    def_pair=song_def.insert(pair<string,uint8_t>(ls,mvl));
                    if(!def_pair.second){
                        throw "key:\""+ls+" -> "+to_string(mvl)+"\"����mapʧ��!";
                    }
                }
                if(song_def.size()==7){
                    break;
                }
                
            }while(!inf.eof());
            do{
                getline(inf,ls);
                //�ҵ�ÿ��track�Ŀ�ʼ
                if(ls.size()>19&&ls[18]=='T'&&ls[19]=='r'){
                    getline(inf,ls);
                    getline(inf,ls);
                    if(ls[ls.size()-1]!=':'){
                        throw string(".s�ļ������쳣!");
                    }
                    trackoft.push_back(outf.tellp());//���浱ǰtrack�׵�ַ
                    cur_track_data_write(inf,outf,blabel,song_def,key_map);
                }
                ls=ls.substr(0,ls.size()-1);
                if(ls==fn){
                    getline(inf,ls);
                    size_t pon=ls.find_last_of('@');
                    if(ls.substr(pon)!="@ NumTrks"){
                        throw string("δ�ҵ�track������Ϣ!");
                    }
                    head.trackn=strtol((ls.substr(7,2)).c_str(),NULL,10);
                    break;
                }
            }while(!inf.eof());
            inf.close();
            inf.clear();
            if(head.trackn==0){
                throw string("������Ϊ��?!");
            }
            if(head.trackn!=trackoft.size()){
                throw "�����ͼ�¼�Ĳ���!��¼: "+to_string(trackoft.size())+"�ļ�β����: "+to_string(head.trackn);
            }
            outf.seekp(0,ios::beg);
            for(uint8_t i=0;i<trackoft.size();++i){
                head.trackoft[i]=trackoft[i]|0x8000000;
            }

            outf.write((char*)&head,sizeof(head));
            outf.close();
            outf.clear();    
        }
    }catch(string es){
        cerr<<"�쳣: "<<es<<endl;
        // cerr<<e.what()<<endl;
        cin.get();
        exit(1);
    }
    
    return 0;
}
