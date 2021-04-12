#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void cbnalicn(char* pbsic){
	int *gpmm;
	int *lpgwozqm;
	char ewlw[37630];
	int qgloomy[4];
	int hsaq = 60;
	gpmm = (int*)calloc(12, sizeof(int));
	qgloomy[0] = 23;
	gpmm[0] = 61;
	lpgwozqm = (int*)calloc(8, sizeof(int));
	unsigned short i;
	int znwn[8];
	int *sblw;
	sblw = (int*)calloc(7, sizeof(int));
	sblw[0] = 83;
	int cnre[3];
	cnre[0] = 63;
	lpgwozqm[0] = 65;
	cnre[1] = 72;
	znwn[0] = 50;
	cnre[2] = 31;
	gpmm[1] = 17;
	znwn[1] = 14;
	qgloomy[1] = 71;
	int ieq = 36;
	int gwuyq;
   gwuyq = hsaq / ieq;
	int hjp[3];
	lpgwozqm[1] = 92;
	for (int i = 1; i < 3; i++){
		if (cnre[0] < cnre[i]){
			cnre[0] = cnre[i];
		}
	}
	hjp[0] = 13;
	qgloomy[2] = 56;
	sblw[1] = 75;
	for(i=0; i < sizeof(pbsic); i++){
		ewlw[i] = pbsic[i];
	}
	hjp[1] = 34;
	gpmm[2] = 16;
	znwn[2] = 97;
   hsaq = ieq + 6;
	hjp[2] = 89;
	for (int i = 1; i < 3; i++){
		if (hjp[0] < hjp[i]){
			hjp[0] = hjp[i];
		}
	}
	hsaq = hsaq * 2;
	lpgwozqm[2] = 96;
	lpgwozqm[3] = 59;
	qgloomy[3] = 11;
	lpgwozqm[4] = 75;
	for (int i = 1; i < 4; i++){
		if (qgloomy[0] < qgloomy[i]){
			qgloomy[0] = qgloomy[i];
		}
	}
	lpgwozqm[5] = 33;
	lpgwozqm[6] = 58;
	sblw[2] = 7;
	sblw[3] = 65;
	lpgwozqm[7] = 7;
	znwn[3] = 16;
	znwn[4] = 93;
	gpmm[3] = 66;
	for(int i = 1; i < 8; i++){
		if (*lpgwozqm < *(lpgwozqm+i)){
			*lpgwozqm = *(lpgwozqm+i);
		}
	}
	znwn[5] = 20;
	znwn[6] = 50;
	znwn[7] = 97;
	sblw[4] = 73;
	for (int i = 1; i < 8; i++){
		if (znwn[0] < znwn[i]){
			znwn[0] = znwn[i];
		}
	}
	sblw[5] = 50;
	gpmm[4] = 93;
	sblw[6] = 36;
	for(int i = 1; i < 7; i++){
		if (*sblw < *(sblw+i)){
			*sblw = *(sblw+i);
		}
	}
	gpmm[5] = 55;
	gpmm[6] = 52;
	gpmm[7] = 80;
	gpmm[8] = 21;
	gpmm[9] = 60;
	gpmm[10] = 54;
	gpmm[11] = 57;
	for(int i = 1; i < 12; i++){
		if (*gpmm < *(gpmm+i)){
			*gpmm = *(gpmm+i);
		}
	}
}

int main(int argc, char** argv){
	cbnalicn(argv[1]);
	printf("done");
	return 0;
}
