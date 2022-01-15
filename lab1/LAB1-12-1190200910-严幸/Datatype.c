#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef unsigned char *byte_pointer;

char ch = 'y';
short sh = 0;
int id = 1190200910;
unsigned int ui = 99999;
long lo = 0;
long long lolo = 0;
float height = 175.2;
double idNum = 321088200009116533;
char *name = &ch;
int ages[] = {18, 19, 20};

typedef struct
{
    char name[20];
    double height;
} S;

typedef union
{
    int age;
    double weight;
} U;

enum E
{
    e1,
    e2,
    e3
};

void show_bytes(byte_pointer data, size_t len)
{
    printf("        ");
    size_t i;
    for (i = 0; i < len; i++)
    {
        printf("%0.2x ", data[i]);
    }
    printf("\n");
}

int main(void)
{
    S s;
    strcpy(s.name, "yanxing");
    s.height = 175.2;
    U u;
    u.age = 19;
    u.weight = 99.0;

    printf("变量名			内容				地址		                内存字节(16进制)\n");
    printf("struct: s 					        %p	", &s);
    show_bytes((byte_pointer)&s, sizeof(s));
    printf("s.name[20]	      %s			%p	", s.name, &(s.name));
    show_bytes((byte_pointer) & (s.name), sizeof(s.name));

    printf("s.height		%.1f				%p	", s.height, &(s.height));
    show_bytes((byte_pointer) & (s.height), sizeof(s.height));
    printf("\n");

    printf("union: u						%p	", &u);
    show_bytes((byte_pointer)&u, sizeof(u));
    printf("u.age	                  %d			        %p	", u.age, &(u.age));
    show_bytes((byte_pointer) & (u.age), sizeof(u.age));

    printf("u.weight	        %.1f				%p	", u.weight, &(u.weight));
    show_bytes((byte_pointer) & (u.weight), sizeof(u.weight));
    printf("\n");

    printf("int:\n");
    printf("id                 %d			%p	", id, &id);
    show_bytes((byte_pointer)&id, sizeof(id));
    printf("\n");

    printf("char:\n");
    printf("ch                 %c 	 			%p	", ch, &ch);
    show_bytes((byte_pointer)&ch, sizeof(ch));
    printf("\n");

    printf("float:\n");
    printf("height                 %f	                %p	", height, &height);
    show_bytes((byte_pointer)&height, sizeof(height));
    printf("\n");

    printf("double:\n");
    printf("idNum              %.1f	                %p	", idNum, &idNum);
    show_bytes((byte_pointer)&idNum, sizeof(idNum));
    printf("\n");

    printf("char *:\n");
    printf("name                    %x				%p	", name, &name);
    show_bytes((byte_pointer)&name, sizeof(name));
    printf("\n");

    printf("unsigned int:\n");
    printf("ui                       %d				%p	", ui, &ui);
    show_bytes((byte_pointer)&ui, sizeof(ui));
    printf("\n");

    printf("int[]						        %p	", ages);
    show_bytes((byte_pointer)ages, sizeof(ages));
    printf("ages[0]		  %d				%p	", ages[0], &(ages[0]));
    show_bytes((byte_pointer) & (ages[0]), sizeof(ages[0]));
    printf("ages[1]		  %d				%p	", ages[1], &(ages[1]));
    show_bytes((byte_pointer) & (ages[1]), sizeof(ages[1]));
    printf("ages[2]		  %d				%p	", ages[2], &(ages[2]));
    show_bytes((byte_pointer) & (ages[2]), sizeof(ages[2]));
    printf("\n");

    printf("\n函数名			地址\n");
    printf("main			%p\n", &main);
    printf("printf			%p", &printf);
    printf("\n");
    return 0;
}
