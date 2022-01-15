/*提交子程序floatx.c，要求：
构造多float变量，分别存储+0-0，最小浮点正数，最大浮点正数、最小正的规格化浮点数、正无穷大、Nan,并打印最可能的精确结果输出（十进制/16进制）。截图。
*/
#include <stdio.h>

//正0
float positiveZero() {
	float f;
	unsigned char* p = &f;
	*p = 0x00;
	*(p + 1) = 0x00;
	*(p + 2) = 0x00;
	*(p + 3) = 0x00;
	return f;
}
//负0
float minusZero() {
	float f;
	unsigned char* p = &f;
	*p = 0x00;
	*(p + 1) = 0x00;
	*(p + 2) = 0x00;
	*(p + 3) = 0x80;
	return f;
}
//最小浮点正数
float leastPositive() {
	float f;
	unsigned char* p = &f;
	*p = 0x01;
	*(p + 1) = 0x00;
	*(p + 2) = 0x00;
	*(p + 3) = 0x00;
	return f;
}
//最大浮点正数
float maxPositive() {
	float f;
	unsigned char* p = &f;
	*p = 0xff;
	*(p + 1) = 0xff;
	*(p + 2) = 0x7f;
	*(p + 3) = 0x7f;
	return f;
}
//最小正的规格化浮点数
float leastFormPositive() {
	float f;
	unsigned char* p = &f;
	*p = 0x00;
	*(p + 1) = 0x00;
	*(p + 2) = 0x80;
	*(p + 3) = 0x00;
	return f;
}
//正无穷大
float positiveInf() {
	float f;
	unsigned char* p = &f;
	*p = 0x00;
	*(p + 1) = 0x00;
	*(p + 2) = 0x80;
	*(p + 3) = 0x7f;
	return f;
}
//Nan
float nan() {
	float f;
	unsigned char* p = &f;
	*p = 0x01;
	*(p + 1) = 0x00;
	*(p + 2) = 0x80;
	*(p + 3) = 0x7f;
	return f;
}

int main() {
	printf("正0:%f\n", positiveZero());
	printf("负0:%f\n", minusZero());
	printf("最小浮点正数:%.100f\n", leastPositive());
	printf("最大浮点正数:%f\n", maxPositive());
	printf("最小正的规格化浮点数:%.100f\n", leastFormPositive());
	printf("正无穷大:%f\n", positiveInf());
	printf("Not a Number: %f\n", nan());

	return 0;
}
