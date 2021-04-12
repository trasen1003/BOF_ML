#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void sui(char* tpkb){
	int wspog = 76;
	int opqfejd[9];
	char zbipfymu[52912];
	int erkottq = 30;
	int *wirqu;
	int jbjsi = 37;
	signed short i;
	int *aajuzmb;
	wirqu = (int*)calloc(8, sizeof(int));
	opqfejd[0] = 75;
	int tsy[10];
	int wujhztag = 32;
	for(i=0; i < sizeof(tpkb); i++){
		zbipfymu[i] = tpkb[i];
	}
	wirqu[0] = 56;
	int tgdyd;
	int wrfdqf;
	wirqu[1] = 75;
	wrfdqf = jbjsi + erkottq;
	tsy[0] = 81;
	tsy[1] = 96;
	wrfdqf = jbjsi + erkottq;
   tgdyd = wspog * wujhztag;
	opqfejd[1] = 66;
	opqfejd[2] = 6;
	wirqu[2] = 20;
	erkottq = erkottq * 2;
	wirqu[3] = 73;
   wrfdqf = erkottq * jbjsi;
	erkottq = erkottq * 2;
   erkottq = jbjsi + 6;
	tsy[2] = 95;
	wirqu[4] = 51;
	opqfejd[3] = 54;
	opqfejd[4] = 21;
	tgdyd = wspog - wujhztag;
	aajuzmb = (int*)calloc(13, sizeof(int));
	opqfejd[5] = 17;
	wirqu[5] = 73;
	wspog = wspog * 2;
	aajuzmb[0] = 40;
	aajuzmb[1] = 19;
	opqfejd[6] = 55;
	tgdyd = wujhztag + wspog;
	opqfejd[7] = 80;
	aajuzmb[2] = 47;
	tsy[3] = 99;
	wirqu[6] = 94;
	aajuzmb[3] = 15;
   tgdyd = wspog * wujhztag;
	aajuzmb[4] = 4;
	opqfejd[8] = 5;
	tsy[4] = 61;
	aajuzmb[5] = 48;
	wirqu[7] = 38;
	aajuzmb[6] = 78;
	for (int i = 1; i < 9; i++){
		if (opqfejd[0] < opqfejd[i]){
			opqfejd[0] = opqfejd[i];
		}
	}
	for(int i = 1; i < 8; i++){
		if (*wirqu < *(wirqu+i)){
			*wirqu = *(wirqu+i);
		}
	}
	tsy[5] = 31;
	aajuzmb[7] = 60;
	wspog = wspog * 2;
	tsy[6] = 25;
	tsy[7] = 29;
   tgdyd = wspog / wujhztag;
	aajuzmb[8] = 31;
	aajuzmb[9] = 78;
	tsy[8] = 21;
	aajuzmb[10] = 35;
	aajuzmb[11] = 61;
	aajuzmb[12] = 81;
	tsy[9] = 93;
	for (int i = 1; i < 10; i++){
		if (tsy[0] < tsy[i]){
			tsy[0] = tsy[i];
		}
	}
	for(int i = 1; i < 13; i++){
		if (*aajuzmb < *(aajuzmb+i)){
			*aajuzmb = *(aajuzmb+i);
		}
	}
}

int main(int argc, char** argv){
	sui(argv[1]);
	printf("done");
	return 0;
}
