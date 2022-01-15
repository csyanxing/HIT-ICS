#include <stdio.h>

int main(){
	unsigned u = 0-1;
	long long i = 0;
	 for(i = 1; i < u-1; i*=2){
		printf("%d ", i);
	}
	printf("%u\n%x\n", u, u);
	return 0;
}
