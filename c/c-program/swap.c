#include<stdio.h>
#include<stdlib.h>
void swap(int * a, int *b)
{
    *a = *a ^ *b; //异或运算，相同为0,不同为1
    *b = *a ^ *b;
    *a = *a ^ *b;
}
int main(int argc, const char *argv[])
{
    int a = 12;
    int b = 23;
    swap(&a, &b);
    printf("a is %d, b is %d.", a, b);
    return 0;
}
