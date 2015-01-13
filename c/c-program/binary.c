#include<stdio.h>
#include<stdlib.h>
int main(int argc, const char *argv[])
{
    int n;
    do
    {
        printf("please input a non-negative number:\n");
        scanf("%d", &n); 
    }while(n < 0);
    for (int i = sizeof(int)*8 - 1; i >= 0; i--)
    {
        int mask = 1 << i;
        if (n & mask)
        {
            printf("1");
        }
        else
        {
            printf("0");
        }
    }
    printf("\n");
    return 0;
}
