#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void vzymni(char* gaocq){
	char ehekoh [23];
	int *jpjk;
	int guw = 24;
	int pezh[15];
	int givobzsd = 16;
	int rswoxt = 16;
	pezh[0] = 34;
	strcpy(ehekoh, gaocq);
	jpjk = (int*)calloc(15, sizeof(int));
	int gxgjljay = 52;
	jpjk[0] = 6;
	pezh[1] = 97;
	int hswfq = 28;
	int prr;
	pezh[2] = 49;
	int ssmmhn;
	int bsobxu = 25;
	prr = gxgjljay - hswfq;
   ssmmhn = givobzsd * rswoxt;
	jpjk[1] = 34;
	jpjk[2] = 19;
   ssmmhn = givobzsd * rswoxt;
	pezh[3] = 67;
	pezh[4] = 93;
	int *rlgkenwq;
	ssmmhn = givobzsd - rswoxt;
	pezh[5] = 13;
	rlgkenwq = (int*)calloc(5, sizeof(int));
	jpjk[3] = 35;
	int ipcj;
	rlgkenwq[0] = 83;
   ipcj = guw * bsobxu;
	pezh[6] = 81;
	rlgkenwq[1] = 51;
	pezh[7] = 4;
	rlgkenwq[2] = 33;
	pezh[8] = 60;
   ipcj = guw / bsobxu;
	pezh[9] = 44;
	rlgkenwq[3] = 60;
	rlgkenwq[4] = 52;
	pezh[10] = 99;
	for(int i = 1; i < 5; i++){
		if (*rlgkenwq < *(rlgkenwq+i)){
			*rlgkenwq = *(rlgkenwq+i);
		}
	}
	pezh[11] = 22;
	ipcj = guw - bsobxu;
   ipcj = guw / bsobxu;
	pezh[12] = 79;
	pezh[13] = 42;
	jpjk[4] = 63;
	jpjk[5] = 65;
	jpjk[6] = 25;
	jpjk[7] = 68;
	pezh[14] = 75;
	for (int i = 1; i < 15; i++){
		if (pezh[0] < pezh[i]){
			pezh[0] = pezh[i];
		}
	}
	jpjk[8] = 65;
	jpjk[9] = 15;
	jpjk[10] = 32;
	jpjk[11] = 21;
	jpjk[12] = 73;
	jpjk[13] = 71;
	jpjk[14] = 57;
	for(int i = 1; i < 15; i++){
		if (*jpjk < *(jpjk+i)){
			*jpjk = *(jpjk+i);
		}
	}
}

int main(int argc, char** argv){
	vzymni(argv[1]);
	printf("done");
	return 0;
}
