#include <stdio.h>

extern void start(void);

int main()
{
    start();
    return 0;
}

void printoutput()
{
    printf("hello");
}