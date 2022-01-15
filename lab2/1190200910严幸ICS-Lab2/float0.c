/*提交子程序float0.c
编写C程序，验证C语言中float除以0/极小浮点数后果，截图
*/
#include <stdio.h>

int main() {
	float f = 100;
	float f0 = f / 0;
	float f1 = f / 0.0000000000000000000000001;
	printf("浮点数100除以0的结果：%f\n", f0);
	printf("浮点数100除以极小浮点数的结果：%f\n", f1);
	return 0;
}
