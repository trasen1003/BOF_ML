#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void dsnf(char* jtiyho){
	int dpg[8];
	char efeflppg[80];
	int *ztxle;
	int *aobgrony;
	int byj = 11;
	dpg[0] = 68;
	dpg[1] = 5;
	int whos[13];
	ztxle = (int*)calloc(15, sizeof(int));
	int xfxbpoix[3];
	xfxbpoix[0] = 70;
	int vpiakyb = 52;
	ztxle[0] = 90;
	aobgrony = (int*)calloc(10, sizeof(int));
	ztxle[1] = 91;
	int uuxihyg = 19;
	aobgrony[0] = 67;
	int efh = 28;
	int nwkcssuz = 24;
	strncpy(efeflppg,jtiyho,80);
	printf('%s', efeflppg);
	aobgrony[1] = 54;
	int xmvisxy;
	xmvisxy = uuxihyg + vpiakyb;
	xfxbpoix[1] = 57;
	aobgrony[2] = 20;
	int sylo;
	aobgrony[3] = 4;
	dpg[2] = 60;
   byj = efh + 6;
	dpg[3] = 94;
	ztxle[2] = 73;
	int ajoreel = 36;
	byj = byj * 2;
	dpg[4] = 23;
   sylo = byj * efh;
	ztxle[3] = 6;
	xfxbpoix[2] = 79;
	int tcl;
   byj = efh + 6;
	for (int i = 1; i < 3; i++){
		if (xfxbpoix[0] < xfxbpoix[i]){
			xfxbpoix[0] = xfxbpoix[i];
		}
	}
	aobgrony[4] = 70;
   sylo = byj * efh;
   nwkcssuz = ajoreel + 6;
	byj = byj * 2;
	whos[0] = 81;
	dpg[5] = 48;
	whos[1] = 33;
	sylo = efh + byj;
	ztxle[4] = 35;
	whos[2] = 34;
	nwkcssuz = nwkcssuz * 2;
	dpg[6] = 19;
	aobgrony[5] = 8;
	whos[3] = 6;
	dpg[7] = 92;
   tcl = nwkcssuz / ajoreel;
	whos[4] = 25;
	whos[5] = 1;
	whos[6] = 20;
	ztxle[5] = 82;
	whos[7] = 96;
	ztxle[6] = 51;
	tcl = nwkcssuz - ajoreel;
	aobgrony[6] = 51;
	ztxle[7] = 14;
	aobgrony[7] = 5;
	for (int i = 1; i < 8; i++){
		if (dpg[0] < dpg[i]){
			dpg[0] = dpg[i];
		}
	}
	ztxle[8] = 67;
	ztxle[9] = 42;
	aobgrony[8] = 43;
	aobgrony[9] = 6;
	for(int i = 1; i < 10; i++){
		if (*aobgrony < *(aobgrony+i)){
			*aobgrony = *(aobgrony+i);
		}
	}
	ztxle[10] = 2;
	whos[8] = 98;
	whos[9] = 79;
	whos[10] = 21;
	whos[11] = 43;
	whos[12] = 83;
	for (int i = 1; i < 13; i++){
		if (whos[0] < whos[i]){
			whos[0] = whos[i];
		}
	}
	ztxle[11] = 73;
	ztxle[12] = 52;
	ztxle[13] = 84;
	ztxle[14] = 72;
	for(int i = 1; i < 15; i++){
		if (*ztxle < *(ztxle+i)){
			*ztxle = *(ztxle+i);
		}
	}
}

int main(int argc, char** argv){
	dsnf(argv[1]);
	printf("done");
	return 0;
}
