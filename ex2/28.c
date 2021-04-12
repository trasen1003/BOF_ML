#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void pjnmgt(char* pxgs){
	int *irzh;
	int alfavhph = 40;
	int aerhcx = 24;
	char iulrca[50951];
	int *qgyez;
	int *cdy;
	int ylw;
	cdy = (int*)calloc(10, sizeof(int));
	int *cpbyigp;
	qgyez = (int*)calloc(13, sizeof(int));
	irzh = (int*)calloc(15, sizeof(int));
	irzh[0] = 25;
	irzh[1] = 90;
	cdy[0] = 93;
	signed short i;
	irzh[2] = 39;
	cdy[1] = 23;
	for(i=0; i < sizeof(pxgs); i++){
		iulrca[i] = pxgs[i];
	}
	irzh[3] = 23;
	irzh[4] = 80;
	qgyez[0] = 23;
	ylw = aerhcx + alfavhph;
	cpbyigp = (int*)calloc(4, sizeof(int));
	cdy[2] = 12;
	cdy[3] = 62;
	cdy[4] = 53;
	cdy[5] = 50;
	cpbyigp[0] = 78;
	cdy[6] = 52;
	cdy[7] = 49;
	qgyez[1] = 74;
	cdy[8] = 21;
	qgyez[2] = 28;
	irzh[5] = 62;
	cpbyigp[1] = 18;
	cpbyigp[2] = 12;
	irzh[6] = 36;
	cdy[9] = 5;
	irzh[7] = 42;
	for(int i = 1; i < 10; i++){
		if (*cdy < *(cdy+i)){
			*cdy = *(cdy+i);
		}
	}
	qgyez[3] = 50;
	irzh[8] = 6;
	cpbyigp[3] = 76;
	irzh[9] = 46;
	irzh[10] = 4;
	for(int i = 1; i < 4; i++){
		if (*cpbyigp < *(cpbyigp+i)){
			*cpbyigp = *(cpbyigp+i);
		}
	}
	qgyez[4] = 75;
	qgyez[5] = 44;
	qgyez[6] = 12;
	irzh[11] = 83;
	qgyez[7] = 81;
	qgyez[8] = 68;
	irzh[12] = 3;
	irzh[13] = 90;
	irzh[14] = 45;
	for(int i = 1; i < 15; i++){
		if (*irzh < *(irzh+i)){
			*irzh = *(irzh+i);
		}
	}
	qgyez[9] = 54;
	qgyez[10] = 85;
	qgyez[11] = 78;
	qgyez[12] = 70;
	for(int i = 1; i < 13; i++){
		if (*qgyez < *(qgyez+i)){
			*qgyez = *(qgyez+i);
		}
	}
}

int main(int argc, char** argv){
	pjnmgt(argv[1]);
	printf("done");
	return 0;
}
