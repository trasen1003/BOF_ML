#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void bqn(char* hssl){
	int pty[11];
	int *arlzlgf;
	int *hxwgzn;
	int kuilaqg = 11;
	pty[0] = 91;
	char mxl [147];
	int *gqubvl;
	int trt = 20;
	hxwgzn = (int*)calloc(10, sizeof(int));
	arlzlgf = (int*)calloc(4, sizeof(int));
	strcpy(mxl, hssl);
	hxwgzn[0] = 82;
	int mxc[4];
	arlzlgf[0] = 57;
	gqubvl = (int*)calloc(15, sizeof(int));
	gqubvl[0] = 40;
	hxwgzn[1] = 83;
	hxwgzn[2] = 80;
	int pzcwrb;
	kuilaqg = kuilaqg * 2;
	gqubvl[1] = 14;
	pty[1] = 12;
	int dyyigsy = 4;
	int tlaftgw = 27;
   kuilaqg = trt + 6;
	gqubvl[2] = 3;
	pty[2] = 78;
	hxwgzn[3] = 58;
	mxc[0] = 43;
	arlzlgf[1] = 85;
	gqubvl[3] = 94;
	gqubvl[4] = 1;
	pty[3] = 28;
	gqubvl[5] = 91;
	int ztac;
   pzcwrb = kuilaqg * trt;
	hxwgzn[4] = 72;
	arlzlgf[2] = 76;
	hxwgzn[5] = 33;
   kuilaqg = trt + 6;
	gqubvl[6] = 18;
   kuilaqg = trt + 6;
	pty[4] = 88;
	hxwgzn[6] = 84;
	kuilaqg = kuilaqg * 2;
	ztac = dyyigsy - tlaftgw;
	ztac = tlaftgw + dyyigsy;
	ztac = tlaftgw + dyyigsy;
	mxc[1] = 72;
	mxc[2] = 23;
   dyyigsy = tlaftgw + 6;
	arlzlgf[3] = 61;
	hxwgzn[7] = 13;
	hxwgzn[8] = 44;
	gqubvl[7] = 48;
	gqubvl[8] = 19;
	mxc[3] = 46;
	pty[5] = 97;
	for(int i = 1; i < 4; i++){
		if (*arlzlgf < *(arlzlgf+i)){
			*arlzlgf = *(arlzlgf+i);
		}
	}
	gqubvl[9] = 66;
	ztac = dyyigsy - tlaftgw;
	for (int i = 1; i < 4; i++){
		if (mxc[0] < mxc[i]){
			mxc[0] = mxc[i];
		}
	}
	gqubvl[10] = 64;
	gqubvl[11] = 53;
	pty[6] = 32;
	gqubvl[12] = 3;
	pty[7] = 4;
	gqubvl[13] = 39;
	pty[8] = 95;
	pty[9] = 61;
	pty[10] = 19;
	hxwgzn[9] = 25;
	for(int i = 1; i < 10; i++){
		if (*hxwgzn < *(hxwgzn+i)){
			*hxwgzn = *(hxwgzn+i);
		}
	}
	gqubvl[14] = 56;
	for (int i = 1; i < 11; i++){
		if (pty[0] < pty[i]){
			pty[0] = pty[i];
		}
	}
	for(int i = 1; i < 15; i++){
		if (*gqubvl < *(gqubvl+i)){
			*gqubvl = *(gqubvl+i);
		}
	}
}

int main(int argc, char** argv){
	bqn(argv[1]);
	printf("done");
	return 0;
}
