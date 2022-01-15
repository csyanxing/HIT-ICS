#include <stdio.h>
/*
编写C程序，计算斐波那契数列在int/long/unsigned int/unsigned long类型时，n为多少时会出错 （linux-x64）
*/

//递归实现
int fib1(int n) {
	if(n == 0)return 0;
	if (n == 1 || n == 2) {
		return 1;
	}
	return fib1(n - 1) + fib1(n - 2);
}

long fib2(long n) {
	if(n == 0)return 0;
	if (n == 1 || n == 2) {
		return 1;
	}
	return fib2(n - 1) + fib2(n - 2);
}

unsigned int fib3(unsigned int n) {
	if(n == 0)return 0;
	if (n == 1 || n == 2) {
		return 1;
	}
	return fib3(n - 1) + fib3(n - 2);
}

unsigned long fib4(unsigned long n) {
	if(n == 0)return 0;
	if (n == 1 || n == 2) {
		return 1;
	}
	return fib4(n - 1) + fib4(n - 2);
}

int main(){
	for (int i = 0; i < 100; i++){
		printf("i:%d fib[i]:%d\n", i, fib1(i));
	}
	for (int i = 0; i < 100; i++)
	{
		printf("i:%d fib[i]:%ld\n", i, fib2(i));
	}
	for (int i = 0; i < 100; i++)
	{
		printf("i:%d fib[i]:%u\n", i, fib3(i));
	}
	for (int i = 0; i < 100; i++)
	{
		printf("i:%d fib[i]:%lu\n", i, fib4(i));
	}
}
