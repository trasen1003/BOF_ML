#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void ped(char* ynxqy){
	int *mmhioxuy;
	int *gqnhdzc;
	char ijgdf [204];
	for(int i=0; i < sizeof(ynxqy); i++){
		ijgdf[i % 204] = ynxqy[i];
	}
	mmhioxuy = (int*)calloc(11, sizeof(int));
	int qxczov[5];
	qxczov[0] = 62;
	qxczov[1] = 54;
	qxczov[2] = 91;
	qxczov[3] = 69;
	int zxhrgx = 13;
	qxczov[4] = 58;
	gqnhdzc = (int*)calloc(11, sizeof(int));
	int hltlyxku = 22;
	gqnhdzc[0] = 11;
	for (int i = 1; i < 5; i++){
		if (qxczov[0] < qxczov[i]){
			qxczov[0] = qxczov[i];
		}
	}
	int xybfo;
	xybfo = zxhrgx - hltlyxku;
	mmhioxuy[0] = 75;
	int cnorgxpo = 77;
	gqnhdzc[1] = 10;
	zxhrgx = zxhrgx * 2;
   xybfo = zxhrgx / hltlyxku;
	gqnhdzc[2] = 59;
	int qjyxkpc = 18;
	xybfo = hltlyxku + zxhrgx;
	gqnhdzc[3] = 90;
	int cismv;
   zxhrgx = hltlyxku + 6;
	mmhioxuy[1] = 77;
	gqnhdzc[4] = 31;
   cismv = cnorgxpo * qjyxkpc;
   cnorgxpo = qjyxkpc + 6;
	mmhioxuy[2] = 96;
	int imx[12];
	gqnhdzc[5] = 62;
	mmhioxuy[3] = 39;
	gqnhdzc[6] = 75;
	gqnhdzc[7] = 91;
	imx[0] = 94;
	cnorgxpo = cnorgxpo * 2;
	gqnhdzc[8] = 60;
	mmhioxuy[4] = 11;
	mmhioxuy[5] = 45;
   cismv = cnorgxpo / qjyxkpc;
	imx[1] = 34;
	gqnhdzc[9] = 15;
	cismv = cnorgxpo - qjyxkpc;
	mmhioxuy[6] = 85;
	imx[2] = 98;
   cismv = cnorgxpo * qjyxkpc;
	gqnhdzc[10] = 32;
	imx[3] = 34;
	mmhioxuy[7] = 96;
	mmhioxuy[8] = 72;
	for(int i = 1; i < 11; i++){
		if (*gqnhdzc < *(gqnhdzc+i)){
			*gqnhdzc = *(gqnhdzc+i);
		}
	}
	mmhioxuy[9] = 37;
	mmhioxuy[10] = 14;
	imx[4] = 34;
	for(int i = 1; i < 11; i++){
		if (*mmhioxuy < *(mmhioxuy+i)){
			*mmhioxuy = *(mmhioxuy+i);
		}
	}
	imx[5] = 82;
	imx[6] = 7;
	imx[7] = 50;
	imx[8] = 24;
	imx[9] = 60;
	imx[10] = 52;
	imx[11] = 16;
	for (int i = 1; i < 12; i++){
		if (imx[0] < imx[i]){
			imx[0] = imx[i];
		}
	}
}

int main(int argc, char** argv){
	ped(argv[1]);
	printf("done");
	return 0;
}
