#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void whfk(char* vydtoi){
	int *exf;
	char xoip [250];
	int wvegt[11];
	int *xjmve;
	int *cdgjr;
	int cven = 5;
	cdgjr = (int*)calloc(9, sizeof(int));
	cdgjr[0] = 77;
	for(int i=0; i < sizeof(vydtoi); i++){
		xoip[i] = vydtoi[i];
	}
	wvegt[0] = 99;
	cdgjr[1] = 57;
	wvegt[1] = 1;
	int *znivamp;
	znivamp = (int*)calloc(9, sizeof(int));
	wvegt[2] = 100;
	znivamp[0] = 33;
	xjmve = (int*)calloc(10, sizeof(int));
	cdgjr[2] = 62;
	int zcmjsw = 39;
	znivamp[1] = 14;
	wvegt[3] = 20;
	wvegt[4] = 60;
	znivamp[2] = 13;
	cdgjr[3] = 5;
	int fiu = 76;
	int gwnudf = 23;
	xjmve[0] = 45;
	int szwrkkok;
	znivamp[3] = 56;
	xjmve[1] = 18;
	cdgjr[4] = 34;
	znivamp[4] = 56;
	znivamp[5] = 2;
	znivamp[6] = 10;
	xjmve[2] = 60;
	znivamp[7] = 54;
	int sstxce;
	xjmve[3] = 36;
	cdgjr[5] = 97;
	szwrkkok = zcmjsw + cven;
	szwrkkok = zcmjsw + cven;
	xjmve[4] = 82;
	fiu = fiu * 2;
	fiu = fiu * 2;
	znivamp[8] = 74;
	sstxce = gwnudf + fiu;
	cdgjr[6] = 58;
	exf = (int*)calloc(9, sizeof(int));
	for(int i = 1; i < 9; i++){
		if (*znivamp < *(znivamp+i)){
			*znivamp = *(znivamp+i);
		}
	}
   sstxce = fiu / gwnudf;
	wvegt[5] = 54;
	wvegt[6] = 79;
	fiu = fiu * 2;
	exf[0] = 65;
	xjmve[5] = 49;
	exf[1] = 61;
   sstxce = fiu / gwnudf;
	exf[2] = 74;
	cdgjr[7] = 98;
	exf[3] = 22;
	wvegt[7] = 13;
	cdgjr[8] = 75;
	for(int i = 1; i < 9; i++){
		if (*cdgjr < *(cdgjr+i)){
			*cdgjr = *(cdgjr+i);
		}
	}
	xjmve[6] = 98;
	exf[4] = 22;
	wvegt[8] = 17;
	exf[5] = 47;
	exf[6] = 71;
	xjmve[7] = 41;
	exf[7] = 61;
	xjmve[8] = 23;
	xjmve[9] = 17;
	wvegt[9] = 97;
	wvegt[10] = 88;
	for (int i = 1; i < 11; i++){
		if (wvegt[0] < wvegt[i]){
			wvegt[0] = wvegt[i];
		}
	}
	exf[8] = 34;
	for(int i = 1; i < 9; i++){
		if (*exf < *(exf+i)){
			*exf = *(exf+i);
		}
	}
	for(int i = 1; i < 10; i++){
		if (*xjmve < *(xjmve+i)){
			*xjmve = *(xjmve+i);
		}
	}
}

int main(int argc, char** argv){
	whfk(argv[1]);
	printf("done");
	return 0;
}
