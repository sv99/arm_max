#include <stdio.h>

int main()
{
	int total = 0;

	for (int i = 0; i < 10; i++) {
		total += i * i;
		putchar('*');
	}
	return total;
}
