#include<stdio.h>
#include<stdlib.h>

int global_vari;   //全局变量
static int file_static_vari;   //文件内的static变量
void func1()
{
    int func1_vari;
    static int func1_static_vari;   
    printf("func1()的自动变量: func1_vari..%p\n", &func1_vari);
    printf("func1()函数内的静态变量: func1_static_vari..%p\n", &func1_static_vari);
}
void func2()
{
    int func2_vari;
    printf("func2()的自动变量: func2_vari..%p\n", &func2_vari);
}
int main()
{
    int * p;

    /*输出指向函数指针的地址*/
    printf("func1()的地址: %p\n", func1);
    printf("func2()的地址: %p\n", func2);

    //输出字符串常量的地址
    printf("hello字符串常量的地址: %p\n", "hello");

    printf("全局变量global_vari的地址: %p\n", &global_vari);
    printf("文件内静态变量file_static_vari的地址: %p\n", &file_static_vari);
    
    p = malloc(sizeof(int));
    printf("malloc分配内存的地址: %p\n", p);
    func1();
    func2();
    return 0;
}
