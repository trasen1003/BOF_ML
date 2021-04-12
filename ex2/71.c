#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void kaes(char* fcs){
	int *bjgbmc;
	int eyug[12];
	int fosuw[14];
	int fuuxqh = 42;
	int hbmllogp = 14;
	int *agnqglbv;
	bjgbmc = (int*)calloc(5, sizeof(int));
	char tdby[54471];
	signed short i;
	for(i=0; i < sizeof(fcs); i++){
		tdby[i] = fcs[i];
	}
	agnqglbv = (int*)calloc(14, sizeof(int));
	fosuw[0] = 64;
	int mgyj;
	int *hoynp;
	int uvcwm[14];
	agnqglbv[0] = 15;
	hoynp = (int*)calloc(3, sizeof(int));
	int *ynq;
	int psm = 30;
	int jduo[3];
	uvcwm[0] = 42;
   mgyj = fuuxqh / hbmllogp;
	uvcwm[1] = 86;
	eyug[0] = 87;
	bjgbmc[0] = 54;
   fuuxqh = hbmllogp + 6;
	hoynp[0] = 71;
	hoynp[1] = 55;
	int uuzun = 15;
	agnqglbv[1] = 16;
	mgyj = hbmllogp + fuuxqh;
	fosuw[1] = 34;
	fosuw[2] = 33;
   mgyj = fuuxqh * hbmllogp;
	eyug[1] = 15;
	fosuw[3] = 100;
	eyug[2] = 70;
	bjgbmc[1] = 78;
	eyug[3] = 16;
	hoynp[2] = 1;
	uvcwm[2] = 93;
	for(int i = 1; i < 3; i++){
		if (*hoynp < *(hoynp+i)){
			*hoynp = *(hoynp+i);
		}
	}
	uvcwm[3] = 71;
	fosuw[4] = 80;
	agnqglbv[2] = 25;
	int etrqgajg;
	jduo[0] = 46;
	uvcwm[4] = 89;
	etrqgajg = uuzun + psm;
	fosuw[5] = 28;
	fosuw[6] = 72;
	fosuw[7] = 50;
	eyug[4] = 13;
	eyug[5] = 91;
	jduo[1] = 61;
	jduo[2] = 70;
	ynq = (int*)calloc(5, sizeof(int));
	agnqglbv[3] = 60;
	agnqglbv[4] = 12;
	ynq[0] = 49;
	bjgbmc[2] = 21;
	uvcwm[5] = 9;
	for (int i = 1; i < 3; i++){
		if (jduo[0] < jduo[i]){
			jduo[0] = jduo[i];
		}
	}
	psm = psm * 2;
	bjgbmc[3] = 4;
	uvcwm[6] = 1;
	uvcwm[7] = 85;
	fosuw[8] = 97;
	bjgbmc[4] = 30;
	fosuw[9] = 96;
	uvcwm[8] = 11;
	eyug[6] = 63;
	for(int i = 1; i < 5; i++){
		if (*bjgbmc < *(bjgbmc+i)){
			*bjgbmc = *(bjgbmc+i);
		}
	}
	eyug[7] = 45;
	agnqglbv[5] = 76;
   psm = uuzun + 6;
	ynq[1] = 29;
	fosuw[10] = 23;
	ynq[2] = 1;
	fosuw[11] = 92;
   psm = uuzun + 6;
	ynq[3] = 76;
	fosuw[12] = 32;
	uvcwm[9] = 21;
	ynq[4] = 94;
	uvcwm[10] = 46;
	agnqglbv[6] = 26;
	for(int i = 1; i < 5; i++){
		if (*ynq < *(ynq+i)){
			*ynq = *(ynq+i);
		}
	}
	agnqglbv[7] = 43;
	fosuw[13] = 83;
	eyug[8] = 23;
	for (int i = 1; i < 14; i++){
		if (fosuw[0] < fosuw[i]){
			fosuw[0] = fosuw[i];
		}
	}
	eyug[9] = 94;
	eyug[10] = 19;
	eyug[11] = 57;
	for (int i = 1; i < 12; i++){
		if (eyug[0] < eyug[i]){
			eyug[0] = eyug[i];
		}
	}
	agnqglbv[8] = 61;
	agnqglbv[9] = 12;
	agnqglbv[10] = 4;
	agnqglbv[11] = 53;
	agnqglbv[12] = 94;
	agnqglbv[13] = 53;
	for(int i = 1; i < 14; i++){
		if (*agnqglbv < *(agnqglbv+i)){
			*agnqglbv = *(agnqglbv+i);
		}
	}
	uvcwm[11] = 76;
	uvcwm[12] = 1;
	uvcwm[13] = 72;
	for (int i = 1; i < 14; i++){
		if (uvcwm[0] < uvcwm[i]){
			uvcwm[0] = uvcwm[i];
		}
	}
}

int main(int argc, char** argv){
	kaes(argv[1]);
	printf("done");
	return 0;
}
