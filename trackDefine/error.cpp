#include <cstdio>
#include <cstdlib>
#include <cstdarg>

//���������ϲ���ֹ����
[[noreturn]]void RaiseError(const char* format,...)
{
    const int bufferSize=1024;//���峤��
    char buffer[bufferSize];//�������ַ���
    std::va_list args;//����va_list�ͱ���
    va_start(args,format);//��ʼ��
    std::vsnprintf(buffer,bufferSize,format,args);
    std::fprintf(stderr,"����:%s\n",buffer);
    va_end(args);//���va_list�ɱ������
    std::exit(1);//�쳣�˳�
}
