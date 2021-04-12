#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void druwch(char* jrqxphl){
	int znnw[5];
	int eotmkzmj[5];
	char wtfnmbu [125];
	znnw[0] = 62;
	strcpy(wtfnmbu, jrqxphl);
	int xfan[7];
	eotmkzmj[0] = 29;
	int yjtt[4];
	int pxvwgc[10];
	znnw[1] = 13;
	eotmkzmj[1] = 10;
	znnw[2] = 16;
	yjtt[0] = 84;
	yjtt[1] = 74;
	xfan[0] = 48;
	xfan[1] = 60;
	pxvwgc[0] = 44;
	pxvwgc[1] = 34;
	eotmkzmj[2] = 43;
	xfan[2] = 49;
	pxvwgc[2] = 5;
	yjtt[2] = 16;
	xfan[3] = 55;
	znnw[3] = 22;
	xfan[4] = 55;
	yjtt[3] = 73;
	for (int i = 1; i < 4; i++){
		if (yjtt[0] < yjtt[i]){
			yjtt[0] = yjtt[i];
		}
	}
	pxvwgc[3] = 66;
	xfan[5] = 38;
	eotmkzmj[3] = 67;
	xfan[6] = 41;
	eotmkzmj[4] = 9;
	for (int i = 1; i < 7; i++){
		if (xfan[0] < xfan[i]){
			xfan[0] = xfan[i];
		}
	}
	for (int i = 1; i < 5; i++){
		if (eotmkzmj[0] < eotmkzmj[i]){
			eotmkzmj[0] = eotmkzmj[i];
		}
	}
	pxvwgc[4] = 94;
	znnw[4] = 35;
	pxvwgc[5] = 57;
	pxvwgc[6] = 14;
	pxvwgc[7] = 32;
	for (int i = 1; i < 5; i++){
		if (znnw[0] < znnw[i]){
			znnw[0] = znnw[i];
		}
	}
	pxvwgc[8] = 89;
	pxvwgc[9] = 12;
	for (int i = 1; i < 10; i++){
		if (pxvwgc[0] < pxvwgc[i]){
			pxvwgc[0] = pxvwgc[i];
		}
	}
}

int main(int argc, char** argv){
	druwch(argv[1]);
	printf("done");
	return 0;
}
