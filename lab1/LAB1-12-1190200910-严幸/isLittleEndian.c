#include <stdio.h>

int isLittleEndian()
{
	int n = 0x123456;
	//获取n所在地址
	int *p = &n;
	//逐位打印从该地址开始的每个字节
	printf("n的值为：0x%x\n", n);
	printf("n的内存中的值为(从小地址开始)：0x%02x 0x%02x 0x%02x 0x%02x\n", *(char *)p, *((char *)p + 1), *((char *)p + 2), *((char *)p + 3));
	char tmp1 = *(char *)p; //获取n的最低地址保存的一个字节
	char tmp2 = (char)n;	//获取n最低的两位
	if (tmp1 == tmp2)
	{ //如果最低地址保存最低位，则是小端序
		return 1;
	}
	else
	{
		return 0;
	}
}

int main()
{
	int x = isLittleEndian();
	if (x == 1)
	{
		printf("是小端序！\n");
	}
	else
	{
		printf("是大端序！\n");
	}
	return 0;
}
