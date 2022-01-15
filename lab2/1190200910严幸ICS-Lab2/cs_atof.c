#include <stdio.h>
#include <math.h>
#include <stdlib.h>

float cs_atof(char *s)
{
    int isNeg = 0;
    if (*s == '-')
    {
        s++;
        isNeg = 1;
    }
    float ret = 0;
    //先把s开头的0读完
    while (*s != 0 && *s == '0')
        s++;

    //读小数点之前的
    while (*s != 0)
    {
        if (*s == '.')
        {
            s++;
            break;
        }
        if (!(*s >= '0' && *s <= '9'))
        {
            printf("Error!\n");
            exit(0);
        }
        ret = ret * 10 + *s - '0';
        s++;
    }
    int cnt = 1;
    //读小数点之后的
    while (*s != 0)
    {
        if (!(*s >= '0' && *s <= '9'))
        {
            printf("Error!\n");
            exit(0);
        }
        ret = ret + (*s - '0') / pow(10.0, cnt);
        cnt++;
        s++;
    }
    if (isNeg)
        ret = -ret;
    return ret;
}

int main()
{
    float f = cs_atof("-9.0125");
    printf("%f\n", f);
    return 0;
}
