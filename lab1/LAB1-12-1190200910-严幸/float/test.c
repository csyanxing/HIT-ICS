
#include <stdio.h>
#include <stdlib.h>
 
int main()
{
    double a=0.186813;
    int i=0;
    printf("0.");
    for(i=0; i<30; i++)
    {
        if(a*2>=1)
        {
            a=a*2-1;
            printf("1");
        }
        else
        {
            a=a*2;
            printf("0");
        }
    }
    printf("\n");
    return 0;
}
