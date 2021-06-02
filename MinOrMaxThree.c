

#include <stdio.h>


extern "C" int SignedMin(int a, int b, int c);
extern "C" int SignedMax(int a, int b, int c);


int main()
{
	int a, b, c;
	int minNum, maxNum;
	printf("Enter a number: ");
	scanf_s("%d", &a);

	printf("and another one: ");
	scanf_s("%d", &b);

	printf("and a third: ");
	scanf_s("%d", &c);

	minNum = SignedMin(a, b, c);
	maxNum = SignedMax(a, b, c);
	

	printf("Smallest Number = %d\n", minNum);
	printf("Largest Number = %d\n", maxNum);
	

	return 0;
}

