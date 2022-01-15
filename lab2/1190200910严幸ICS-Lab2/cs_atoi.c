#include <stdio.h>
#include <stdlib.h>

int cs_atoi(char *s)
{
    int isNeg = 0;
    if (*s == '-')
    {
        s++;
        isNeg = 1;
    }
    int ret = 0;
    //先把s开头的0读完
    while (*s != 0 && *s == '0')
        s++;
    while (*s != 0)
    {
        if (!(*s >= '0' && *s <= '9'))
        {
            printf("输入有误！\n");
            exit(0);
        }
        ret = ret * 10 + *s - '0';
        s++;
    }
    if(isNeg)
        ret = -ret;
    return ret;
}

int main()
{
    int x = cs_atoi("-7890");
    printf("%d\n", x);
    return 0;
}
