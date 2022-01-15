#include <stdio.h>

int fib5(int n) {
    if(n == 0)
        return 0;
    if (n == 1 || n == 2) {
		return 1;
	}
	int a0 = 1, a1 = 1, a2 = 1;
	for (int i = 3; i <= n; i++) {
		a0 = a1;
		a1 = a2;
		a2 = a0 + a1;
	}
	return a2;
}

long fib6(long n) {
    if (n == 0)
        return 0;
    if (n == 1 || n == 2) {
		return 1;
	}
	long a0 = 1, a1 = 1, a2 = 1;
	for (long i = 3; i <= n; i++) {
		a0 = a1;
		a1 = a2;
		a2 = a0 + a1;
	}
	return a2;
}

unsigned int fib7(unsigned int n) {
    if (n == 0)
        return 0;
    if (n == 1 || n == 2) {
		return 1;
	}
	unsigned int a0 = 1, a1 = 1, a2 = 1;
	for (unsigned int i = 3; i <= n; i++) {
		a0 = a1;
		a1 = a2;
		a2 = a0 + a1;
	}
	return a2;
}

unsigned long fib8(unsigned long n) {
    if (n == 0)
        return 0;
    if (n == 1 || n == 2) {
		return 1;
	}
	unsigned long a0 = 1, a1 = 1, a2 = 1;
	for (unsigned long i = 3; i <= n; i++) {
		a0 = a1;
		a1 = a2;
		a2 = a0 + a1;
	}
	return a2;
}

int main() {
    printf("int:\n");
    for (int i = 0; i < 100; i++) {
        printf("i:%d, fib[i]:%d\n", i, fib5(i));
    }
    printf("long:\n");
    for (int i = 0; i < 100; i++)
    {
        printf("i:%d, fib[i]:%ld\n", i, fib6(i));
    }
    printf("unsigned int:\n");
    for (int i = 0; i < 100; i++)
    {
        printf("i:%d, fib[i]:%u\n", i, fib7(i));
    }
    printf("unsigned long:\n");
    for (int i = 0; i < 100; i++)
    {
        printf("i:%d, fib[i]:%lu\n", i, fib8(i));
    }

}