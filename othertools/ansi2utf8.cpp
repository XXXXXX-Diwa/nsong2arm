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
			const char *asc=astr.data();
			char *utc=new char[astr.size()*3];
			uint32_t utfLen=ascii_to_utf8(asc,astr.size(),utc);
			ouf.open(*iter,ios::out|ios::binary);
			if(ouf.fail()){
				cerr<<"文件: \""+*iter+"\"无法创建!";
			}
			// ouf.write((char*)bom,3);
			ouf.write(utc,utfLen);
			delete[]utc;
			ouf.close();
		}
	}
	~CodingConver(){}
	unsigned int ascii_to_utf8(const char * pszASCII, unsigned int lenASCII, char * pszUTF8)
	{
	  // length of pszUTF8 must be enough; 
	  // its maximum is (lenASCII*3 + 1)
	  
	  if (!lenASCII || !pszASCII)
	  {
		pszUTF8[0] = 0;
		return 0;  
	  }

	  unsigned int lenUCS2;
	  unsigned int lenUTF8;
	  wchar_t *pszUCS2 = new wchar_t[lenASCII * 3 + 1];
	  if (!pszUCS2)
	  {
		pszUTF8[0] = 0;
		return 0;  
	  }

	  lenUCS2 = ::MultiByteToWideChar(CP_ACP, 0, pszASCII, lenASCII, pszUCS2, lenASCII + 1);
	  lenUTF8 = UTF8Length(pszUCS2, lenUCS2);
	  // length of pszUTF8 must be >= (lenUTF8 + 1)
	  UTF8FromUCS2(pszUCS2, lenUCS2, pszUTF8, lenUTF8);
	  delete [] pszUCS2;
	  return lenUTF8;
	}
	unsigned int UTF8Length(const wchar_t *uptr, unsigned int tlen) {
		unsigned int len = 0;
		for (unsigned int i = 0; i < tlen && uptr[i]; ++i) {
			unsigned int uch = uptr[i];
			if (uch < 0x80)
				++len;
			else if (uch < 0x800)
				len += 2;
			else 
				len +=3;
		}
		return len;
	}

	void UTF8FromUCS2(const wchar_t *uptr, unsigned int tlen, char *putf, unsigned int len) {
		int k = 0;
		for (unsigned int i = 0; i < tlen && uptr[i]; ++i) {
			unsigned int uch = uptr[i];
			if (uch < 0x80) {
				putf[k++] = static_cast<char>(uch);
			} else if (uch < 0x800) {
				putf[k++] = static_cast<char>(0xC0 | (uch >> 6));
				putf[k++] = static_cast<char>(0x80 | (uch & 0x3f));
			} else {
				putf[k++] = static_cast<char>(0xE0 | (uch >> 12));
				putf[k++] = static_cast<char>(0x80 | ((uch >> 6) & 0x3f));
				putf[k++] = static_cast<char>(0x80 | (uch & 0x3f));
			}
		}
		putf[len] = '\0';
	}

	unsigned int UCS2Length(const char *s, unsigned int len) {
		unsigned int ulen = 0;
		for (unsigned int i=0; i<len; ++i) {
			UCHAR ch = static_cast<UCHAR>(s[i]);
			if ((ch < 0x80) || (ch > (0x80 + 0x40)))
				++ulen;
		}
		return ulen;
	}
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