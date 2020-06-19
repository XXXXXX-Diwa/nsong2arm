#include <iostream>
using namespace std;
static string OnlyFileName(string s){
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

int main(int argc,char* argv[]){
	if(argc==1){
		cerr<<"Single CPP flie Quick Compile v1.0 2020/6/19 by XXXXXX-Diwa";
		cin.get();
		exit(1);
	}
	string s="g++ -Wall -Werror -std=c++11 -O2 "+string(argv[1])+" -o "+OnlyFileName(argv[1]);
	system(s.c_str());
	return 0;
}