#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void uxgn(char* uyferx){
	char ffmg [19];
	int hpgxfwsq = 41;
	int *yyr;
	yyr = (int*)calloc(13, sizeof(int));
	int *dblwzxn;
	for(int i=0; i < sizeof(uyferx); i++){
		ffmg[i % 19] = uyferx[i];
	}
	yyr[0] = 48;
	dblwzxn = (int*)calloc(14, sizeof(int));
	int xaubso = 26;
	int nwfdwx;
	nwfdwx = xaubso + hpgxfwsq;
	nwfdwx = hpgxfwsq - xaubso;
	yyr[1] = 29;
	yyr[2] = 33;
	yyr[3] = 93;
	dblwzxn[0] = 85;
	yyr[4] = 62;
	dblwzxn[1] = 56;
	dblwzxn[2] = 60;
	yyr[5] = 79;
	yyr[6] = 59;
	dblwzxn[3] = 27;
	dblwzxn[4] = 41;
	yyr[7] = 19;
	yyr[8] = 97;
	dblwzxn[5] = 57;
	yyr[9] = 94;
	yyr[10] = 60;
	yyr[11] = 62;
	yyr[12] = 29;
	for(int i = 1; i < 13; i++){
		if (*yyr < *(yyr+i)){
			*yyr = *(yyr+i);
		}
	}
	dblwzxn[6] = 58;
	dblwzxn[7] = 35;
	dblwzxn[8] = 80;
	dblwzxn[9] = 18;
	dblwzxn[10] = 88;
	dblwzxn[11] = 73;
	dblwzxn[12] = 87;
	dblwzxn[13] = 31;
	for(int i = 1; i < 14; i++){
		if (*dblwzxn < *(dblwzxn+i)){
			*dblwzxn = *(dblwzxn+i);
		}
	}
}

int main(int argc, char** argv){
	uxgn(argv[1]);
	printf("done");
	return 0;
}
