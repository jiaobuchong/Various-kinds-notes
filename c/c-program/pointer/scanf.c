#include<stdio.h>
int main()
{
    int hoge;
    char buf[256];

    printf("&hoge...%p\n", &hoge);

    printf("Input initial value.\n");
    scanf("%d", &hoge);

    for(;;)
    {
        printf("hoge..%d\n", hoge);
        getchar();
        hoge++;
    }
    return 0;
}
