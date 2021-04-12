#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void sxjkpv(char* xvvk){
	int *eblm;
	int mdxzlap = 8;
	int ufxjxtp[15];
	ufxjxtp[0] = 56;
	int rpma = 15;
	int ouaou;
	int incz = 28;
	char gswnp [133];
	int fxkohds[4];
	eblm = (int*)calloc(15, sizeof(int));
	int oui[8];
	ouaou = mdxzlap - rpma;
	int ozzg = 17;
	int incztnwh;
	incz = incz * 2;
	oui[0] = 44;
	fxkohds[0] = 38;
	eblm[0] = 38;
	for(int i=0; i < sizeof(xvvk); i++){
		gswnp[i] = xvvk[i];
	}
	incz = incz * 2;
	eblm[1] = 27;
	oui[1] = 91;
	oui[2] = 30;
	eblm[2] = 51;
	oui[3] = 13;
	oui[4] = 73;
	ufxjxtp[1] = 40;
	oui[5] = 16;
	oui[6] = 7;
	fxkohds[1] = 74;
	ufxjxtp[2] = 34;
	ufxjxtp[3] = 3;
	eblm[3] = 25;
	ufxjxtp[4] = 100;
	oui[7] = 55;
	for (int i = 1; i < 8; i++){
		if (oui[0] < oui[i]){
			oui[0] = oui[i];
		}
	}
	ufxjxtp[5] = 92;
	ufxjxtp[6] = 55;
	ufxjxtp[7] = 47;
	eblm[4] = 63;
	eblm[5] = 11;
	fxkohds[2] = 3;
	fxkohds[3] = 59;
	for (int i = 1; i < 4; i++){
		if (fxkohds[0] < fxkohds[i]){
			fxkohds[0] = fxkohds[i];
		}
	}
	eblm[6] = 48;
	eblm[7] = 30;
	eblm[8] = 58;
	eblm[9] = 3;
	ufxjxtp[8] = 82;
	eblm[10] = 52;
	eblm[11] = 21;
	ufxjxtp[9] = 97;
	eblm[12] = 79;
	ufxjxtp[10] = 5;
	ufxjxtp[11] = 88;
	eblm[13] = 83;
	eblm[14] = 67;
	ufxjxtp[12] = 31;
	for(int i = 1; i < 15; i++){
		if (*eblm < *(eblm+i)){
			*eblm = *(eblm+i);
		}
	}
	ufxjxtp[13] = 76;
	ufxjxtp[14] = 20;
	for (int i = 1; i < 15; i++){
		if (ufxjxtp[0] < ufxjxtp[i]){
			ufxjxtp[0] = ufxjxtp[i];
		}
	}
}

int main(int argc, char** argv){
	sxjkpv(argv[1]);
	printf("done");
	return 0;
}
