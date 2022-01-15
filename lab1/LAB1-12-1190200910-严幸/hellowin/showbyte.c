#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_LINE 1024
int main(){
    char buf[MAX_LINE]; /*缓冲区*/
    FILE *fp;
	int i;
    int len;
    if ((fp = fopen("hellolinux.c", "r")) == NULL)
    {
        perror("fail to read");
        exit(1);
    }
    while (fgets(buf, MAX_LINE, fp) != NULL)
    {
        len = strlen(buf);
        buf[len] = '\0'; /*去掉换行符*/
		for(i = 0; i < len; i++){
			printf("%c: %d\n", buf[i], buf[i]);
		}
		printf("\n");
		for(i = 0; i < len; i++){
			//printf("%d\t", buf[i]);
		}
        //printf("%s\n", buf);
    }
    return 0;
}
