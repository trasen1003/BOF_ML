#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void oudhwii(char* stwau){
	int gkwsx[3];
	int *iyfu;
	iyfu = (int*)calloc(14, sizeof(int));
	iyfu[0] = 58;
	int ihgtzs[4];
	ihgtzs[0] = 42;
	gkwsx[0] = 53;
	int *ruxgtrqp;
	gkwsx[1] = 33;
	int gjfqr[8];
	ruxgtrqp = (int*)calloc(13, sizeof(int));
	ihgtzs[1] = 9;
	gjfqr[0] = 76;
	iyfu[1] = 37;
	iyfu[2] = 89;
	char bydfikgu [33];
	iyfu[3] = 33;
	for(int i=0; i < sizeof(stwau); i++){
		bydfikgu[i] = stwau[i];
	}
	gkwsx[2] = 61;
	gjfqr[1] = 40;
	ruxgtrqp[0] = 16;
	gjfqr[2] = 34;
	ruxgtrqp[1] = 69;
	int gwsfko = 7;
	int fxkwolfq = 42;
	iyfu[4] = 45;
	int phix = 24;
	ruxgtrqp[2] = 95;
	int qkbumw = 21;
	int movf;
	gjfqr[3] = 85;
	gjfqr[4] = 58;
   movf = fxkwolfq / qkbumw;
	int nnn;
	movf = qkbumw + fxkwolfq;
	for (int i = 1; i < 3; i++){
		if (gkwsx[0] < gkwsx[i]){
			gkwsx[0] = gkwsx[i];
		}
	}
	nnn = phix + gwsfko;
	ruxgtrqp[3] = 28;
	gjfqr[5] = 83;
	gjfqr[6] = 70;
	iyfu[5] = 46;
	gjfqr[7] = 22;
	for (int i = 1; i < 8; i++){
		if (gjfqr[0] < gjfqr[i]){
			gjfqr[0] = gjfqr[i];
		}
	}
	gwsfko = gwsfko * 2;
	nnn = phix + gwsfko;
	iyfu[6] = 34;
	ihgtzs[2] = 32;
	ruxgtrqp[4] = 76;
	ruxgtrqp[5] = 68;
   nnn = gwsfko * phix;
   nnn = gwsfko * phix;
	iyfu[7] = 8;
	gwsfko = gwsfko * 2;
	iyfu[8] = 2;
	iyfu[9] = 7;
	iyfu[10] = 19;
	ruxgtrqp[6] = 45;
	iyfu[11] = 73;
	iyfu[12] = 76;
	ihgtzs[3] = 54;
	ruxgtrqp[7] = 42;
	ruxgtrqp[8] = 58;
	for (int i = 1; i < 4; i++){
		if (ihgtzs[0] < ihgtzs[i]){
			ihgtzs[0] = ihgtzs[i];
		}
	}
	ruxgtrqp[9] = 89;
	iyfu[13] = 20;
	ruxgtrqp[10] = 74;
	ruxgtrqp[11] = 16;
	ruxgtrqp[12] = 72;
	for(int i = 1; i < 14; i++){
		if (*iyfu < *(iyfu+i)){
			*iyfu = *(iyfu+i);
		}
	}
	for(int i = 1; i < 13; i++){
		if (*ruxgtrqp < *(ruxgtrqp+i)){
			*ruxgtrqp = *(ruxgtrqp+i);
		}
	}
}

int main(int argc, char** argv){
	oudhwii(argv[1]);
	printf("done");
	return 0;
}
