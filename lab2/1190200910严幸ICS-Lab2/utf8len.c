#include <stdio.h>

int utf8len(unsigned char *s)
{
    int cnt = 0;
    unsigned char *now = s;
    unsigned char val = *now;
    while (val != 0)
    {
        cnt++;
        if ((val >> 7) == 0)
        {
            now += 1;
            val = *now;
        }
        else if ((val >> 5) == 0b110)
        {
            now += 2;
            val = *now;
        }
        else if ((val >> 4) == 0b1110)
        {
            now += 3;
            val = *now;
        }
        else if ((val >> 3) == 0b11110)
        {
            now += 4;
            val = *now;
        }
        else if ((val >> 2) == 0b111110)
        {
            now += 5;
            val = *now;
        }
        else if ((val >> 1) == 0b1111110)
        {
            now += 6;
            val = *now;
        }
    }
    return cnt;
}
int main()
{
    unsigned char *s = "110严yan幸xing";//12 utf-8 char
    printf("%s\n", s);
    printf("%d\n", utf8len(s));
    return 0;
    // printf("%d\n", ((unsigned char)-28 >> 4) == 0b1110);
}
