#include<stdio.h>
void test()
{
	int num1;
	int num2;
	printf("Enter two numbers");
	scanf("%d%d", &num1, &num2);

	if(num1 == num2){
		printf("%d is equal to %d", num1, num2);
	}

	if(num1 < num2){
		printf("%d is less than %d", num1, num2);
	}

	if(num1 > num2){
		printf("%d is greater than %d", num1, num2);
	}
}

int main()
{
	test();
}



