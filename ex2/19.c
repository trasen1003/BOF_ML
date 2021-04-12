#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void wkv(char* yfhnyd){
	char ggnpar [63];
	int *bdypor;
	int *pyuscf;
	int qmvcqyd = 48;
	int bioeejj[12];
	int wuexcv = 1;
	int hgmxa[8];
	bioeejj[0] = 28;
	int wvqqlr = 35;
	pyuscf = (int*)calloc(9, sizeof(int));
	bioeejj[1] = 76;
	int tqomrvr = 80;
	int upe = 1;
	hgmxa[0] = 60;
	int aqigjupb;
	int bsaf[11];
	strcpy(ggnpar, yfhnyd);
	aqigjupb = upe + tqomrvr;
	int jdcmd[5];
	int lsxd = 3;
	bsaf[0] = 68;
	bsaf[1] = 50;
	bsaf[2] = 65;
	hgmxa[1] = 25;
	hgmxa[2] = 28;
	bioeejj[2] = 80;
	bdypor = (int*)calloc(10, sizeof(int));
	pyuscf[0] = 37;
	hgmxa[3] = 55;
	bdypor[0] = 1;
	int eip;
	eip = lsxd + wuexcv;
	int fzpck;
	hgmxa[4] = 49;
	hgmxa[5] = 3;
	eip = lsxd + wuexcv;
	bioeejj[3] = 51;
   eip = wuexcv / lsxd;
	bdypor[1] = 50;
	hgmxa[6] = 54;
	jdcmd[0] = 63;
	bdypor[2] = 72;
	bioeejj[4] = 98;
	int lnpr[13];
	bdypor[3] = 53;
	bioeejj[5] = 77;
	lnpr[0] = 50;
	bioeejj[6] = 94;
	bsaf[3] = 29;
	hgmxa[7] = 9;
	jdcmd[1] = 92;
   fzpck = qmvcqyd / wvqqlr;
	pyuscf[1] = 50;
	for (int i = 1; i < 8; i++){
		if (hgmxa[0] < hgmxa[i]){
			hgmxa[0] = hgmxa[i];
		}
	}
	lnpr[1] = 23;
	bioeejj[7] = 24;
	fzpck = wvqqlr + qmvcqyd;
   eip = wuexcv * lsxd;
   wuexcv = lsxd + 6;
	bdypor[4] = 12;
	pyuscf[2] = 35;
	bdypor[5] = 3;
   fzpck = qmvcqyd * wvqqlr;
	bioeejj[8] = 85;
	bdypor[6] = 80;
	bioeejj[9] = 55;
   eip = wuexcv * lsxd;
	lnpr[2] = 12;
	pyuscf[3] = 1;
	pyuscf[4] = 5;
	bioeejj[10] = 60;
	bioeejj[11] = 43;
	jdcmd[2] = 47;
	pyuscf[5] = 15;
	pyuscf[6] = 4;
	bsaf[4] = 50;
	bdypor[7] = 85;
	bdypor[8] = 97;
	bsaf[5] = 96;
	bdypor[9] = 59;
	for(int i = 1; i < 10; i++){
		if (*bdypor < *(bdypor+i)){
			*bdypor = *(bdypor+i);
		}
	}
	jdcmd[3] = 10;
	bsaf[6] = 10;
	lnpr[3] = 2;
	lnpr[4] = 2;
	for (int i = 1; i < 12; i++){
		if (bioeejj[0] < bioeejj[i]){
			bioeejj[0] = bioeejj[i];
		}
	}
	bsaf[7] = 59;
	jdcmd[4] = 36;
	for (int i = 1; i < 5; i++){
		if (jdcmd[0] < jdcmd[i]){
			jdcmd[0] = jdcmd[i];
		}
	}
	bsaf[8] = 59;
	fzpck = qmvcqyd - wvqqlr;
	pyuscf[7] = 55;
	bsaf[9] = 53;
	lnpr[5] = 98;
	pyuscf[8] = 5;
	lnpr[6] = 88;
	lnpr[7] = 77;
	lnpr[8] = 76;
	lnpr[9] = 47;
	for(int i = 1; i < 9; i++){
		if (*pyuscf < *(pyuscf+i)){
			*pyuscf = *(pyuscf+i);
		}
	}
	lnpr[10] = 51;
	lnpr[11] = 86;
	lnpr[12] = 3;
	for (int i = 1; i < 13; i++){
		if (lnpr[0] < lnpr[i]){
			lnpr[0] = lnpr[i];
		}
	}
	bsaf[10] = 60;
	for (int i = 1; i < 11; i++){
		if (bsaf[0] < bsaf[i]){
			bsaf[0] = bsaf[i];
		}
	}
}

int main(int argc, char** argv){
	wkv(argv[1]);
	printf("done");
	return 0;
}
