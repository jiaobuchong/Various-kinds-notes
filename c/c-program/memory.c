#include<stdio.h>
#include<stdlib.h>
void f(void)
{
    int *x = malloc(10 * sizeof(int));
    //buffer overrun
    x[10] = 0;
}
int main(int argc, const char *argv[])
{
    f();
    return 0;
}
