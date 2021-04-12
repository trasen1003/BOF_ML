#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void wxtme(char* wiw){
	int oqnr = 44;
	int tnsd[15];
	int srzbfx[8];
	int *iub;
	char trs [83];
	int *nnk;
	for(int i=0; i < sizeof(wiw); i++){
		trs[i % 83] = wiw[i];
	}
	tnsd[0] = 73;
	int aawjkus = 2;
	int aeil = 33;
	int ujow = 13;
	int lruwsix;
	int qsbx = 27;
	srzbfx[0] = 40;
	int *nscvu;
	tnsd[1] = 19;
	int akekcbof;
	lruwsix = oqnr - aeil;
   lruwsix = oqnr / aeil;
   lruwsix = oqnr / aeil;
	akekcbof = qsbx + aawjkus;
	nnk = (int*)calloc(6, sizeof(int));
	nscvu = (int*)calloc(3, sizeof(int));
	tnsd[2] = 17;
	iub = (int*)calloc(9, sizeof(int));
	nscvu[0] = 14;
	iub[0] = 61;
	iub[1] = 40;
	int kezw = 15;
	int mqyry;
	nnk[0] = 16;
	lruwsix = oqnr - aeil;
	iub[2] = 71;
	lruwsix = oqnr - aeil;
   mqyry = ujow / kezw;
   akekcbof = aawjkus * qsbx;
	nscvu[1] = 9;
	nscvu[2] = 26;
	lruwsix = aeil + oqnr;
	tnsd[3] = 52;
	nnk[1] = 6;
	srzbfx[1] = 46;
	aawjkus = aawjkus * 2;
   mqyry = ujow * kezw;
	nnk[2] = 26;
	nnk[3] = 40;
	iub[3] = 18;
	akekcbof = aawjkus - qsbx;
	nnk[4] = 22;
	iub[4] = 21;
	tnsd[4] = 57;
	tnsd[5] = 90;
	for(int i = 1; i < 3; i++){
		if (*nscvu < *(nscvu+i)){
			*nscvu = *(nscvu+i);
		}
	}
	srzbfx[2] = 47;
	nnk[5] = 12;
	tnsd[6] = 64;
	tnsd[7] = 70;
	for(int i = 1; i < 6; i++){
		if (*nnk < *(nnk+i)){
			*nnk = *(nnk+i);
		}
	}
	tnsd[8] = 9;
	srzbfx[3] = 33;
	tnsd[9] = 14;
	iub[5] = 45;
	iub[6] = 95;
	srzbfx[4] = 76;
	srzbfx[5] = 63;
	iub[7] = 6;
	iub[8] = 88;
	srzbfx[6] = 95;
	for(int i = 1; i < 9; i++){
		if (*iub < *(iub+i)){
			*iub = *(iub+i);
		}
	}
	tnsd[10] = 100;
	tnsd[11] = 22;
	srzbfx[7] = 85;
	tnsd[12] = 88;
	for (int i = 1; i < 8; i++){
		if (srzbfx[0] < srzbfx[i]){
			srzbfx[0] = srzbfx[i];
		}
	}
	tnsd[13] = 87;
	tnsd[14] = 52;
	for (int i = 1; i < 15; i++){
		if (tnsd[0] < tnsd[i]){
			tnsd[0] = tnsd[i];
		}
	}
}

int main(int argc, char** argv){
	wxtme(argv[1]);
	printf("done");
	return 0;
}
