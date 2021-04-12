#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void fmzaphl(char* dvuk){
	char xyhv [183];
	for(int i=0; i < sizeof(dvuk); i++){
		xyhv[i % 183] = dvuk[i];
	}
	int uowhttos = 34;
	int *uujkn;
	uujkn = (int*)calloc(14, sizeof(int));
	int mtqokk = 11;
	uujkn[0] = 38;
	int *bkzrcqfr;
	int yxw;
	uujkn[1] = 91;
	bkzrcqfr = (int*)calloc(11, sizeof(int));
	uujkn[2] = 95;
   uowhttos = mtqokk + 6;
	yxw = mtqokk + uowhttos;
	uujkn[3] = 59;
	uowhttos = uowhttos * 2;
	uujkn[4] = 38;
   uowhttos = mtqokk + 6;
	uujkn[5] = 73;
	bkzrcqfr[0] = 75;
	uujkn[6] = 26;
	uujkn[7] = 39;
	bkzrcqfr[1] = 13;
	bkzrcqfr[2] = 86;
	bkzrcqfr[3] = 98;
	uujkn[8] = 77;
	uujkn[9] = 33;
	bkzrcqfr[4] = 66;
	bkzrcqfr[5] = 63;
	uujkn[10] = 30;
	uujkn[11] = 55;
	uujkn[12] = 19;
	uujkn[13] = 40;
	for(int i = 1; i < 14; i++){
		if (*uujkn < *(uujkn+i)){
			*uujkn = *(uujkn+i);
		}
	}
	bkzrcqfr[6] = 90;
	bkzrcqfr[7] = 42;
	bkzrcqfr[8] = 56;
	bkzrcqfr[9] = 2;
	bkzrcqfr[10] = 92;
	for(int i = 1; i < 11; i++){
		if (*bkzrcqfr < *(bkzrcqfr+i)){
			*bkzrcqfr = *(bkzrcqfr+i);
		}
	}
}

int main(int argc, char** argv){
	fmzaphl(argv[1]);
	printf("done");
	return 0;
}
