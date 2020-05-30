#include <cstdio>
#include <cstdlib>
#include <cstdarg>

//报告错误诊断并终止程序
[[noreturn]]void RaiseError(const char* format,...)
{
    const int bufferSize=1024;//缓冲长度
    char buffer[bufferSize];//接续的字符串
    std::va_list args;//定义va_list型变量
    va_start(args,format);//初始化
    std::vsnprintf(buffer,bufferSize,format,args);
    std::fprintf(stderr,"错误:%s\n",buffer);
    va_end(args);//清空va_list可变参数表
    std::exit(1);//异常退出
}
