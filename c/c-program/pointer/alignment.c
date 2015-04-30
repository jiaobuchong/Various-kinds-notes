#include<stdio.h>
typedef struct 
{
    int int1;
    double double1;
    char char1;
    double double2;
}Hoge;
int main()
{
    Hoge hoge;
    printf("hoge size..%d\n", sizeof(Hoge));
    return 0;
}
