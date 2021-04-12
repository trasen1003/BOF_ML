#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void rzpdprgs(char* qhmb){
	int *diksi;
	int ascqvt[10];
	diksi = (int*)calloc(3, sizeof(int));
	int *splf;
	ascqvt[0] = 36;
	diksi[0] = 13;
	char bugwrg [166];
	splf = (int*)calloc(13, sizeof(int));
	diksi[1] = 10;
	strcpy(bugwrg, qhmb);
	splf[0] = 73;
	splf[1] = 83;
	splf[2] = 36;
	diksi[2] = 95;
	ascqvt[1] = 88;
	for(int i = 1; i < 3; i++){
		if (*diksi < *(diksi+i)){
			*diksi = *(diksi+i);
		}
	}
	ascqvt[2] = 88;
	ascqvt[3] = 19;
	ascqvt[4] = 28;
	ascqvt[5] = 81;
	splf[3] = 11;
	splf[4] = 25;
	splf[5] = 100;
	splf[6] = 91;
	splf[7] = 95;
	splf[8] = 22;
	splf[9] = 47;
	ascqvt[6] = 73;
	splf[10] = 80;
	splf[11] = 47;
	splf[12] = 25;
	ascqvt[7] = 49;
	for(int i = 1; i < 13; i++){
		if (*splf < *(splf+i)){
			*splf = *(splf+i);
		}
	}
	ascqvt[8] = 63;
	ascqvt[9] = 21;
	for (int i = 1; i < 10; i++){
		if (ascqvt[0] < ascqvt[i]){
			ascqvt[0] = ascqvt[i];
		}
	}
}

int main(int argc, char** argv){
	rzpdprgs(argv[1]);
	printf("done");
	return 0;
}
