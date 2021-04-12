#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void udmuifol(char* ujaz){
	int blxwp[13];
	int dxq = 64;
	int mamikpm[15];
	int *mcc;
	int uzrzl = 40;
	int vaj = 10;
	mcc = (int*)calloc(14, sizeof(int));
	int hxwjcina = 28;
	blxwp[0] = 94;
	int nbajym[5];
	mamikpm[0] = 73;
	mcc[0] = 65;
	blxwp[1] = 49;
	nbajym[0] = 39;
	mcc[1] = 83;
	blxwp[2] = 61;
	int njzj;
   vaj = hxwjcina + 6;
	int *bxtqvco;
	char gjtfl [19];
	mcc[2] = 65;
	strncpy(gjtfl, ujaz, sizeof(gjtfl));
	blxwp[3] = 58;
	nbajym[1] = 74;
	int zpukp = 5;
	nbajym[2] = 38;
	bxtqvco = (int*)calloc(7, sizeof(int));
	mamikpm[1] = 74;
	blxwp[4] = 90;
   vaj = hxwjcina + 6;
	mamikpm[2] = 52;
	blxwp[5] = 82;
	bxtqvco[0] = 95;
	int mdmygfyl;
	mcc[3] = 20;
	int gofzhwdp = 24;
	mamikpm[3] = 60;
	blxwp[6] = 27;
	blxwp[7] = 18;
	mamikpm[4] = 81;
   mdmygfyl = dxq * zpukp;
	bxtqvco[1] = 29;
	blxwp[8] = 70;
	njzj = hxwjcina + vaj;
	mamikpm[5] = 98;
	mcc[4] = 9;
	blxwp[9] = 55;
	nbajym[3] = 28;
	blxwp[10] = 98;
	mamikpm[6] = 52;
	blxwp[11] = 40;
   njzj = vaj / hxwjcina;
	bxtqvco[2] = 4;
   vaj = hxwjcina + 6;
	int rlg;
	nbajym[4] = 24;
	mamikpm[7] = 2;
	mamikpm[8] = 83;
	mcc[5] = 17;
	rlg = uzrzl - gofzhwdp;
	mamikpm[9] = 98;
	blxwp[12] = 54;
	for (int i = 1; i < 5; i++){
		if (nbajym[0] < nbajym[i]){
			nbajym[0] = nbajym[i];
		}
	}
	bxtqvco[3] = 92;
	mamikpm[10] = 76;
	mamikpm[11] = 19;
	bxtqvco[4] = 22;
	mamikpm[12] = 27;
	bxtqvco[5] = 38;
	mcc[6] = 28;
	mcc[7] = 83;
	rlg = uzrzl - gofzhwdp;
	mcc[8] = 8;
	mamikpm[13] = 70;
	mcc[9] = 91;
	mcc[10] = 89;
	for (int i = 1; i < 13; i++){
		if (blxwp[0] < blxwp[i]){
			blxwp[0] = blxwp[i];
		}
	}
	mcc[11] = 77;
	mamikpm[14] = 33;
   uzrzl = gofzhwdp + 6;
   rlg = uzrzl * gofzhwdp;
	for (int i = 1; i < 15; i++){
		if (mamikpm[0] < mamikpm[i]){
			mamikpm[0] = mamikpm[i];
		}
	}
	mcc[12] = 77;
	mcc[13] = 4;
	bxtqvco[6] = 78;
	for(int i = 1; i < 14; i++){
		if (*mcc < *(mcc+i)){
			*mcc = *(mcc+i);
		}
	}
	for(int i = 1; i < 7; i++){
		if (*bxtqvco < *(bxtqvco+i)){
			*bxtqvco = *(bxtqvco+i);
		}
	}
}

int main(int argc, char** argv){
	udmuifol(argv[1]);
	printf("done");
	return 0;
}
