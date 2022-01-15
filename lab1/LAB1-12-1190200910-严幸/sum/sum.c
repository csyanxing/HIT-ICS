#include <stdio.h>

int sum(int a[], int len){
	int i, sum = 0;
	// printf("%d\n", len-1);
	for(i = 0; i <= len-1; i++){
		sum += a[i];
	}
	return sum;
}

int main(){
	int a[10] = {0, 1, 2, 3, 4};
	int s = sum(a, 0);
	printf("%d\n", s);
	return 0;
}
