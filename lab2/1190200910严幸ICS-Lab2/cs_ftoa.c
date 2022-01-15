#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#define MAX_SIZE 100
char str[MAX_SIZE];

char *cs_ftoa(float num, int n)  //输入n表示保留n位小数
{
    int isNeg = 0;
    if (num < 0)
    {
        isNeg = 1;
        num = -num;
    }
    int integer = (int)num;        //整数部分
    float decimal = num - integer; //小数部分
    // printf("%f", num);
    // exit(0);
    //先把整数部分放到串里面
    int cnt = 0;
    while (integer > 0)
    {
        str[cnt++] = (integer % 10) + '0';
        integer /= 10;
    }
    for (int i = 0; i < cnt / 2; i++)
    {
        char tmp = str[i];
        str[i] = str[cnt - 1 - i];
        str[cnt - 1 - i] = tmp;
    }
    //再把小数部分放到串当中，保留n位小数
    if(n == 0){
        str[cnt++] = 0;
        // return str;
    }else if(n < 0){
        printf("ERROR!");
        exit(1);
    }else
    {
        str[cnt++] = '.';
        for (int i = 0; i <= n-2; i++){
            str[cnt++] = (int)(decimal * 10) + '0';
            decimal = decimal * 10 - (int)(decimal * 10);
        }
        //四舍五入
        if ((int)(decimal * 10) >= 5)
            str[cnt++] = (int)(decimal * 10) + '1';
        else
        {
            str[cnt++] = (int)(decimal * 10) + '0';
        }
        
        str[cnt++] = 0;
    }
    if(isNeg){
        for (int i = cnt; i > 0; i--){
            str[i] = str[i - 1];
        }
        str[0] = '-';
    }
    return str;
}

int main()
{
    printf("%s\n", cs_ftoa(-1230.25555, 3)); //保留3位小数，成功测试了四舍五入
    return 0;
}