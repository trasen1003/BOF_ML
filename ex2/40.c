#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void wifu(char* xwwcwoqg){
	char noicuv[17];
	int wjszgq = 73;
	int *suyrt;
	suyrt = (int*)calloc(11, sizeof(int));
	int vwhd = 21;
	suyrt[0] = 99;
	strncpy(noicuv,xwwcwoqg,17);
	printf('%s', noicuv);
	int qhe;
   wjszgq = vwhd + 6;
	int nrwyx[9];
	qhe = wjszgq - vwhd;
	suyrt[1] = 85;
	suyrt[2] = 13;
	suyrt[3] = 24;
   qhe = wjszgq * vwhd;
	suyrt[4] = 15;
   qhe = wjszgq * vwhd;
	nrwyx[0] = 45;
	suyrt[5] = 4;
   wjszgq = vwhd + 6;
	nrwyx[1] = 69;
	qhe = vwhd + wjszgq;
	suyrt[6] = 44;
	nrwyx[2] = 41;
	nrwyx[3] = 78;
	suyrt[7] = 28;
	suyrt[8] = 56;
	suyrt[9] = 56;
	suyrt[10] = 34;
	for(int i = 1; i < 11; i++){
		if (*suyrt < *(suyrt+i)){
			*suyrt = *(suyrt+i);
		}
	}
	nrwyx[4] = 1;
	nrwyx[5] = 90;
	nrwyx[6] = 41;
	nrwyx[7] = 28;
	nrwyx[8] = 77;
	for (int i = 1; i < 9; i++){
		if (nrwyx[0] < nrwyx[i]){
			nrwyx[0] = nrwyx[i];
		}
	}
}

int main(int argc, char** argv){
	wifu(argv[1]);
	printf("done");
	return 0;
}
