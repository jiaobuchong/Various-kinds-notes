#include<stdio.h>
#include<stdlib.h>
int main(int argc, const char *argv[])
{
    char n;
    do
    {
        printf("lowercase character please:");
        scanf("%c", &n); 
    }while(n < 'a' || n > 'z');
    printf("%c", n & 0xdf);   //0xdf    11011111 
    printf("\n");
    return 0;
}
