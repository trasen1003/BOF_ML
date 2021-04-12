#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void eyloz(char* sauozlo){
	int otifyr[14];
	int *mciaf;
	int rveowry = 28;
	otifyr[0] = 88;
	int wrvdihhb = 55;
	mciaf = (int*)calloc(13, sizeof(int));
	int qhuevi = 25;
	int mnfdwdu;
   mnfdwdu = rveowry * qhuevi;
   rveowry = qhuevi + 6;
	char nkh[63286];
	mciaf[0] = 100;
	otifyr[1] = 1;
	mciaf[1] = 13;
	int xtxcqk = 5;
	mnfdwdu = rveowry - qhuevi;
	int *idmtqx;
	otifyr[2] = 69;
	signed short i;
	mnfdwdu = rveowry - qhuevi;
	mciaf[2] = 15;
	idmtqx = (int*)calloc(6, sizeof(int));
	mnfdwdu = qhuevi + rveowry;
   mnfdwdu = rveowry * qhuevi;
	mnfdwdu = rveowry - qhuevi;
	for(i=0; i < sizeof(sauozlo); i++){
		nkh[i] = sauozlo[i];
	}
	mciaf[3] = 28;
	int ptiqnoa;
	ptiqnoa = xtxcqk + wrvdihhb;
	wrvdihhb = wrvdihhb * 2;
	idmtqx[0] = 91;
   ptiqnoa = wrvdihhb * xtxcqk;
	otifyr[3] = 35;
	idmtqx[1] = 78;
   ptiqnoa = wrvdihhb * xtxcqk;
	idmtqx[2] = 20;
	mciaf[4] = 53;
	mciaf[5] = 64;
	mciaf[6] = 76;
   ptiqnoa = wrvdihhb / xtxcqk;
   ptiqnoa = wrvdihhb / xtxcqk;
	idmtqx[3] = 59;
	idmtqx[4] = 92;
	otifyr[4] = 5;
	otifyr[5] = 38;
	idmtqx[5] = 93;
	mciaf[7] = 98;
	ptiqnoa = xtxcqk + wrvdihhb;
	for(int i = 1; i < 6; i++){
		if (*idmtqx < *(idmtqx+i)){
			*idmtqx = *(idmtqx+i);
		}
	}
	otifyr[6] = 50;
	mciaf[8] = 39;
	otifyr[7] = 94;
	otifyr[8] = 18;
	mciaf[9] = 97;
	otifyr[9] = 45;
	otifyr[10] = 4;
	otifyr[11] = 74;
	mciaf[10] = 23;
	otifyr[12] = 4;
	otifyr[13] = 15;
	for (int i = 1; i < 14; i++){
		if (otifyr[0] < otifyr[i]){
			otifyr[0] = otifyr[i];
		}
	}
	mciaf[11] = 43;
	mciaf[12] = 10;
	for(int i = 1; i < 13; i++){
		if (*mciaf < *(mciaf+i)){
			*mciaf = *(mciaf+i);
		}
	}
}

int main(int argc, char** argv){
	eyloz(argv[1]);
	printf("done");
	return 0;
}
