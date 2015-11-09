#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "sut.h"

int main(int argc, char **argv) {
	int val;
	if(argc != 2) {
		(void) printf("Usage: %s value\n", argv[0]);
		return -1;
	}
	val = atoi(argv[1]);
	(void) printf("%d in roman is %s\n", val, to_roman(val));
	return 0;
}
