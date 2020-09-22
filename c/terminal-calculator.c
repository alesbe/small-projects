#include <stdio.h>
void sum(float num1, float num2){
	printf("Result: %f", num1 + num2);
}

void substract(float num1, float num2){
	printf("Result: %f", num1 - num2);
}

void multiply(float num1, float num2){
	float result = 0;

	for(int i = 0; i < num2; i++){
		result += num1;
	}

	printf("Result %f", result);
}

void divide(float num1, float num2){
	printf("Result: %f", num1 / num2);
}

int main(){
	int option;
	float num1, num2;

	printf("Terminal Calculator. By Alvaro E. \n\n");

	printf("Please, select one of the following operations: \n");
	printf("1.- Sum\n");
	printf("2.- Substract\n");
	printf("3.- Multiply\n");
	printf("4.- Divide\n\n");

	printf("Option number: ");
	scanf("%d", &option);

	printf("\n\n");
	printf("Number 1: ");
	scanf("%f", &num1);
	printf("\n");
	printf("Number 2: ");
	scanf("%f", &num2);

	switch(option){
		case 1:
			sum(num1, num2);
			break;

		case 2:
			substract(num1, num2);
			break;

		case 3:
			multiply(num1, num2);
			break;

		case 4:
			divide(num1, num2);
			break;

		default:
			printf("Enter a valid option!");
			break;
	}

	return 0;
}
