#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void uash(char* krvvc){
	int *ulwarii;
	int trxty = 9;
	char yolocg [161];
	int *ntikvxv;
	int *cpahk;
	ntikvxv = (int*)calloc(4, sizeof(int));
	int *fgq;
	int gwmx[14];
	cpahk = (int*)calloc(14, sizeof(int));
	cpahk[0] = 47;
	gwmx[0] = 99;
	int msbgvt = 9;
	ulwarii = (int*)calloc(4, sizeof(int));
	int fznjol = 11;
	cpahk[1] = 75;
	ntikvxv[0] = 41;
	int hzopp;
	for(int i=0; i < sizeof(krvvc); i++){
		yolocg[i % 161] = krvvc[i];
	}
	int smvpe = 15;
	trxty = trxty * 2;
	cpahk[2] = 6;
	int lizbk;
   lizbk = msbgvt / smvpe;
	cpahk[3] = 19;
	ulwarii[0] = 74;
	ntikvxv[1] = 22;
   hzopp = trxty / fznjol;
	fgq = (int*)calloc(11, sizeof(int));
   hzopp = trxty / fznjol;
	ntikvxv[2] = 100;
   msbgvt = smvpe + 6;
	fgq[0] = 61;
	ntikvxv[3] = 56;
	ulwarii[1] = 40;
	fgq[1] = 78;
	ulwarii[2] = 93;
	gwmx[1] = 5;
   trxty = fznjol + 6;
	lizbk = smvpe + msbgvt;
	fgq[2] = 29;
	ulwarii[3] = 73;
	fgq[3] = 80;
	fgq[4] = 90;
	lizbk = msbgvt - smvpe;
	trxty = trxty * 2;
	lizbk = msbgvt - smvpe;
	fgq[5] = 46;
	gwmx[2] = 70;
	fgq[6] = 38;
	for(int i = 1; i < 4; i++){
		if (*ntikvxv < *(ntikvxv+i)){
			*ntikvxv = *(ntikvxv+i);
		}
	}
	for(int i = 1; i < 4; i++){
		if (*ulwarii < *(ulwarii+i)){
			*ulwarii = *(ulwarii+i);
		}
	}
	fgq[7] = 16;
	fgq[8] = 32;
	gwmx[3] = 75;
	cpahk[4] = 45;
	fgq[9] = 100;
	cpahk[5] = 41;
	gwmx[4] = 13;
	cpahk[6] = 28;
	cpahk[7] = 69;
	fgq[10] = 100;
	for(int i = 1; i < 11; i++){
		if (*fgq < *(fgq+i)){
			*fgq = *(fgq+i);
		}
	}
	cpahk[8] = 20;
	gwmx[5] = 22;
	gwmx[6] = 70;
	gwmx[7] = 14;
	gwmx[8] = 78;
	gwmx[9] = 78;
	gwmx[10] = 61;
	gwmx[11] = 50;
	gwmx[12] = 63;
	gwmx[13] = 37;
	cpahk[9] = 59;
	for (int i = 1; i < 14; i++){
		if (gwmx[0] < gwmx[i]){
			gwmx[0] = gwmx[i];
		}
	}
	cpahk[10] = 100;
	cpahk[11] = 91;
	cpahk[12] = 3;
	cpahk[13] = 89;
	for(int i = 1; i < 14; i++){
		if (*cpahk < *(cpahk+i)){
			*cpahk = *(cpahk+i);
		}
	}
}

int main(int argc, char** argv){
	uash(argv[1]);
	printf("done");
	return 0;
}
