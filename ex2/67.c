#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void inzbyllo(char* ftkqrwi){
	int ieurml = 80;
	int *hhxx;
	int *nybrf;
	int xvvwc = 1;
	int mzgouye = 44;
	nybrf = (int*)calloc(10, sizeof(int));
	int mtqpxl;
	int kzfsojx = 72;
	int hkt = 28;
	mtqpxl = xvvwc + ieurml;
	int gwr = 38;
	int kshvq;
	int kfytgqse = 19;
	kshvq = hkt + kzfsojx;
	hhxx = (int*)calloc(12, sizeof(int));
	int vtqea = 10;
	hhxx[0] = 31;
	char clqgy [110];
	int muonco;
	muonco = gwr + mzgouye;
	nybrf[0] = 15;
   mtqpxl = ieurml * xvvwc;
	strcpy(clqgy, ftkqrwi);
   mzgouye = gwr + 6;
	hhxx[1] = 13;
	nybrf[1] = 77;
	ieurml = ieurml * 2;
	hhxx[2] = 67;
	mtqpxl = ieurml - xvvwc;
   mtqpxl = ieurml * xvvwc;
	kshvq = hkt + kzfsojx;
	nybrf[2] = 15;
	hhxx[3] = 62;
	int hsafpy;
	nybrf[3] = 86;
	kfytgqse = kfytgqse * 2;
	hhxx[4] = 92;
	mzgouye = mzgouye * 2;
	hhxx[5] = 40;
	hhxx[6] = 78;
   mtqpxl = ieurml / xvvwc;
	hhxx[7] = 95;
   ieurml = xvvwc + 6;
   muonco = mzgouye / gwr;
	hhxx[8] = 45;
	nybrf[4] = 91;
	hhxx[9] = 80;
	nybrf[5] = 25;
	hhxx[10] = 72;
	hsafpy = vtqea + kfytgqse;
   hsafpy = kfytgqse / vtqea;
	hhxx[11] = 18;
   hsafpy = kfytgqse * vtqea;
   kfytgqse = vtqea + 6;
	nybrf[6] = 64;
	for(int i = 1; i < 12; i++){
		if (*hhxx < *(hhxx+i)){
			*hhxx = *(hhxx+i);
		}
	}
	kfytgqse = kfytgqse * 2;
	nybrf[7] = 78;
	nybrf[8] = 14;
	nybrf[9] = 54;
	for(int i = 1; i < 10; i++){
		if (*nybrf < *(nybrf+i)){
			*nybrf = *(nybrf+i);
		}
	}
}

int main(int argc, char** argv){
	inzbyllo(argv[1]);
	printf("done");
	return 0;
}
