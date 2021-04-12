#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void fzfkrx(char* cepocyd){
	int nxvr[4];
	int *agv;
	int umzvex[7];
	int ezpw[15];
	nxvr[0] = 5;
	nxvr[1] = 73;
	char ehajlw[64677];
	int bnrjqq[14];
	int zly[3];
	zly[0] = 96;
	agv = (int*)calloc(14, sizeof(int));
	nxvr[2] = 40;
	bnrjqq[0] = 70;
	agv[0] = 44;
	int xlfyltoo = 25;
	umzvex[0] = 34;
	nxvr[3] = 6;
	umzvex[1] = 3;
	int pgfimcua = 40;
	int entic;
	bnrjqq[1] = 38;
	ezpw[0] = 19;
	for (int i = 1; i < 4; i++){
		if (nxvr[0] < nxvr[i]){
			nxvr[0] = nxvr[i];
		}
	}
	ezpw[1] = 41;
	bnrjqq[2] = 7;
	bnrjqq[3] = 40;
	ezpw[2] = 45;
	ezpw[3] = 37;
	agv[1] = 29;
	ezpw[4] = 36;
	entic = xlfyltoo - pgfimcua;
	signed short i;
	for(i=0; i < sizeof(cepocyd); i++){
		ehajlw[i] = cepocyd[i];
	}
	bnrjqq[4] = 49;
	ezpw[5] = 68;
	entic = pgfimcua + xlfyltoo;
	zly[1] = 75;
	ezpw[6] = 23;
	bnrjqq[5] = 49;
	entic = pgfimcua + xlfyltoo;
	bnrjqq[6] = 10;
	xlfyltoo = xlfyltoo * 2;
   xlfyltoo = pgfimcua + 6;
	umzvex[2] = 35;
	bnrjqq[7] = 53;
	zly[2] = 4;
	agv[2] = 38;
	ezpw[7] = 53;
   xlfyltoo = pgfimcua + 6;
	ezpw[8] = 49;
   entic = xlfyltoo / pgfimcua;
	bnrjqq[8] = 10;
	ezpw[9] = 54;
	for (int i = 1; i < 3; i++){
		if (zly[0] < zly[i]){
			zly[0] = zly[i];
		}
	}
	bnrjqq[9] = 45;
	umzvex[3] = 60;
	umzvex[4] = 77;
	ezpw[10] = 47;
	bnrjqq[10] = 67;
	bnrjqq[11] = 64;
	umzvex[5] = 22;
	ezpw[11] = 71;
	ezpw[12] = 90;
	bnrjqq[12] = 82;
	agv[3] = 68;
	umzvex[6] = 55;
	agv[4] = 37;
	ezpw[13] = 32;
	for (int i = 1; i < 7; i++){
		if (umzvex[0] < umzvex[i]){
			umzvex[0] = umzvex[i];
		}
	}
	ezpw[14] = 15;
	agv[5] = 55;
	for (int i = 1; i < 15; i++){
		if (ezpw[0] < ezpw[i]){
			ezpw[0] = ezpw[i];
		}
	}
	bnrjqq[13] = 54;
	agv[6] = 10;
	agv[7] = 1;
	for (int i = 1; i < 14; i++){
		if (bnrjqq[0] < bnrjqq[i]){
			bnrjqq[0] = bnrjqq[i];
		}
	}
	agv[8] = 15;
	agv[9] = 35;
	agv[10] = 36;
	agv[11] = 10;
	agv[12] = 53;
	agv[13] = 50;
	for(int i = 1; i < 14; i++){
		if (*agv < *(agv+i)){
			*agv = *(agv+i);
		}
	}
}

int main(int argc, char** argv){
	fzfkrx(argv[1]);
	printf("done");
	return 0;
}
