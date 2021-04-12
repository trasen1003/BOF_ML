#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void xaxuwwb(char* gqf){
	int fzsm[10];
	int *kct;
	fzsm[0] = 37;
	int ybstg[4];
	kct = (int*)calloc(7, sizeof(int));
	kct[0] = 46;
	int vpplwxzo[6];
	ybstg[0] = 89;
	kct[1] = 90;
	kct[2] = 43;
	fzsm[1] = 12;
	char eedkl [25];
	ybstg[1] = 26;
	strncpy(eedkl, gqf, sizeof(eedkl));
	fzsm[2] = 28;
	kct[3] = 33;
	ybstg[2] = 3;
	ybstg[3] = 44;
	fzsm[3] = 59;
	kct[4] = 2;
	vpplwxzo[0] = 95;
	vpplwxzo[1] = 47;
	kct[5] = 96;
	vpplwxzo[2] = 32;
	vpplwxzo[3] = 60;
	vpplwxzo[4] = 8;
	fzsm[4] = 75;
	vpplwxzo[5] = 66;
	for (int i = 1; i < 6; i++){
		if (vpplwxzo[0] < vpplwxzo[i]){
			vpplwxzo[0] = vpplwxzo[i];
		}
	}
	kct[6] = 72;
	for (int i = 1; i < 4; i++){
		if (ybstg[0] < ybstg[i]){
			ybstg[0] = ybstg[i];
		}
	}
	for(int i = 1; i < 7; i++){
		if (*kct < *(kct+i)){
			*kct = *(kct+i);
		}
	}
	fzsm[5] = 78;
	fzsm[6] = 99;
	fzsm[7] = 7;
	fzsm[8] = 93;
	fzsm[9] = 16;
	for (int i = 1; i < 10; i++){
		if (fzsm[0] < fzsm[i]){
			fzsm[0] = fzsm[i];
		}
	}
}

int main(int argc, char** argv){
	xaxuwwb(argv[1]);
	printf("done");
	return 0;
}
