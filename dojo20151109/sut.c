/* sut.c */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "sut.h"


int max(int valueOne, int valueTwo){
	if(valueOne > valueTwo){
		return valueOne;
	} else {
		return valueTwo;
	}
}

int min(int valueOne, int valueTwo){
	if(valueOne < valueTwo){
		return valueOne;
	} else {
		return valueTwo;
	}
}


int combina(int* player1, int*player2) {
	int d = 0;
	for(int i = 0 ; LIST_END != player1[i] ; i++){
		int a = player1[i];
		int b = player2[i];

		d += abs(a - b);

	}
	return d;
}

int checa_combinacao(int coworkers[7][7], int c) {
	int* coworkersc = coworkers[c];
	int mais_parecido = 4;
	for(int i = 0 ; i < 7 ; i++){
		// Combina todos os coworkers com coworker_c
		// O mais parecido, ou seja, o de menor valor, serah o resultado.
	}
	return mais_parecido;
}

char* table(int x) {
	char* res; 
	switch (x) {
		case 5: 
			res = "V";
			break;
	    default:
	        res = "I";

	}
	return res;
}

char* to_roman(int x) {
    char* result;
    result = malloc(100000);
    
    if (x <= 3) {
    	int i;
    	for (i = 0; i < x; i++) {
    		strcat(result, "I");	
    	}
    } else { 
    	int remainder = 5 % x;
    	x += remainder;
    	strcat(result, to_roman(remainder));
    	strcat(result, table(x));
    }
    /* printf("%d => %s\n", x, result); */
    return result;
}

long square(int x) {
	return (long)x*(long)x;
}


