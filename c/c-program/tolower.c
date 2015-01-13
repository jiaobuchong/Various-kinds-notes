#include<stdio.h>
#include<stdlib.h>
int main(int argc, const char *argv[])
{
    char n;
    do
    {
        printf("Uppercase character please:");
        scanf("%c", &n); 
    }while(n < 'A' || n > 'Z');
    printf("%c", n | 0x20);   //0x20    00100000 32
    printf("\n");
    return 0;
}
