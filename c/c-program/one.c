#include<stdio.h>
void invert(int*, int);
int main()
{
    int i;
    static int a[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    for(i=0; i<10; i++)
    {
        printf("%3d", a[i]);
    }
    printf("\n");
    invert(a, 10);
    for(i=0; i<10; i++)
    {
        printf("%3d",a[i]);
    }
    printf("\n");
    return 0;
}
void invert(int *p,int n)
{
    int *pm, *pf, *pl;
    int temp, m;
    m = (n - 1) / 2; //m = 4
    pf = p;    //pf指向数组p
    pl = p + n - 1; //指向数组最后一个数
    pm = p + m;   //指向中间那个数
    while(pf <= pm)
    {
        temp = *pf;
        *pf = *pl;
        *pl = temp;
        ++pf;
        --pl;
    }
}
