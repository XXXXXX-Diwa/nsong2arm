#include <iostream>
// #include <Windows.h>
#include <conio.h>
#include <io.h>
using namespace std;

int main(){
	if(access("Abandoned.asm",0)==-1){
			cerr<<"run armips tool show error v1.0 2020/6/17 by XXXXXX-Diwa";
			cin.get();
			exit(1);
	}
	while(true){
		int i=system("arm Abandoned.asm");
		if(!i){
			break;
		}
		char c=getche();
		if(c==13){
			break;
		}else if(c=='f'||c=='F'){
			system("cls");
		}
	}
	return 0;
}