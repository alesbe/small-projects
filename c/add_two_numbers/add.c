// Super simple program that sums two int inputs.
// Was made to compile it with gcc and analyze the assembly that produces.

#include <stdio.h>

int main(){
	int num1, num2, result;

	printf("Number 1: ");
	scanf("%d", &num1);

	printf("Number 2: ");
	scanf("%d", &num2);

	printf("\n");

	result = num1 + num2;

	printf("Result: %d\n", result);

	return 0;
}
