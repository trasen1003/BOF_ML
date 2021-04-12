#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void xmyaoi(char* bel){
	char skpruvq[62317];
	int rjeia[12];
	int kqvwof[15];
	kqvwof[0] = 7;
	rjeia[0] = 1;
	rjeia[1] = 14;
	unsigned short i;
	for(i=0; i < sizeof(bel); i++){
		skpruvq[i] = bel[i];
	}
	rjeia[2] = 30;
	kqvwof[1] = 91;
	int hahnue[14];
	hahnue[0] = 93;
	hahnue[1] = 50;
	hahnue[2] = 52;
	kqvwof[2] = 44;
	hahnue[3] = 92;
	kqvwof[3] = 25;
	rjeia[3] = 35;
	rjeia[4] = 95;
	hahnue[4] = 14;
	hahnue[5] = 63;
	kqvwof[4] = 23;
	kqvwof[5] = 77;
	kqvwof[6] = 87;
	kqvwof[7] = 5;
	rjeia[5] = 10;
	kqvwof[8] = 38;
	rjeia[6] = 15;
	kqvwof[9] = 60;
	kqvwof[10] = 53;
	rjeia[7] = 53;
	hahnue[6] = 21;
	kqvwof[11] = 88;
	hahnue[7] = 62;
	hahnue[8] = 48;
	kqvwof[12] = 61;
	rjeia[8] = 11;
	rjeia[9] = 81;
	kqvwof[13] = 46;
	kqvwof[14] = 86;
	hahnue[9] = 95;
	rjeia[10] = 86;
	for (int i = 1; i < 15; i++){
		if (kqvwof[0] < kqvwof[i]){
			kqvwof[0] = kqvwof[i];
		}
	}
	hahnue[10] = 23;
	hahnue[11] = 55;
	rjeia[11] = 11;
	for (int i = 1; i < 12; i++){
		if (rjeia[0] < rjeia[i]){
			rjeia[0] = rjeia[i];
		}
	}
	hahnue[12] = 92;
	hahnue[13] = 92;
	for (int i = 1; i < 14; i++){
		if (hahnue[0] < hahnue[i]){
			hahnue[0] = hahnue[i];
		}
	}
}

int main(int argc, char** argv){
	xmyaoi(argv[1]);
	printf("done");
	return 0;
}
