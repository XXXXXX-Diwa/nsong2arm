#include<stdio.h>
#include<io.h>
#include<stdlib.h>
#include<string.h>

int main(void){
	char* iniFile="argrun.ini";
	if(access(iniFile,F_OK)==-1){
		printf("ȱ��: \"%s\" �ļ�!");
		exit(-1);
	}
	FILE *in=fopen(iniFile,"rt");
	char arg[10][81]={};
	int i;
	for(i=0;i<10;++i){
		fscanf(in,"%s",arg[i]);
		if(feof(in)){
			break;
		}
	}
	if(i>1){
		puts("������");
		exit(-1);
	}
	char call[810]={};
	for(int j=0;j<=i;++j){
		strcat(call,arg[j]);
		strcat(call," ");
	}
	int k=0;
	if((k=system(call))){
		printf("����ʧ��!");
		return k;
	}
	return 0;
}