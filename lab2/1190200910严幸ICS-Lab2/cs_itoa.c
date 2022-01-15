#include <stdio.h>
#include <string.h>

#define MAX_SIZE 100 //最大不能超过100个字符

char str[MAX_SIZE] = {0};
char str_tmp[MAX_SIZE] = {0};

char *cs_itoa(int num)
{
    int cnt = 0;
    if (num == 0)
    {
        strcpy(str, "0");
        return str;
    }
    int isNegative = num > 0 ? 0 : 1;
    if (isNegative)
        num = -num;
    //先用str_tmp保存数字从低位到高位排序
    while (num > 0)
    {
        str_tmp[cnt++] = (num % 10) + '0';
        num /= 10;
    }
    int i = 0;
    //将str_tmp再次逆序，得到正确结果
    if (isNegative)
    {
        str[0] = '-';
        i++;
    }
    for (int j = cnt - 1; j >= 0; j--)
    {
        str[i] = str_tmp[j];
        i++;
    }
    str[i] = 0;
    return str;
}

int main()
{
    printf("%s\n", cs_itoa(-123450));
}