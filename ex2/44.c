#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void qnhdi(char* utzz){
	char ikh [144];
	int gvk = 63;
	int *qdvx;
	int hlufvmhg[14];
	int *nvlpl;
	nvlpl = (int*)calloc(11, sizeof(int));
	hlufvmhg[0] = 24;
	int *cwxnbh;
	int emzqo[3];
	int *msua;
	msua = (int*)calloc(4, sizeof(int));
	qdvx = (int*)calloc(7, sizeof(int));
	cwxnbh = (int*)calloc(4, sizeof(int));
	int spm = 23;
	int pamkm;
	int htw = 11;
	msua[0] = 95;
	nvlpl[0] = 76;
	qdvx[0] = 94;
	for(int i=0; i < sizeof(utzz); i++){
		ikh[i] = utzz[i];
	}
	msua[1] = 40;
	nvlpl[1] = 68;
	msua[2] = 95;
	nvlpl[2] = 61;
   pamkm = gvk * spm;
	nvlpl[3] = 86;
   gvk = spm + 6;
	pamkm = gvk - spm;
	qdvx[1] = 2;
	int *dnv;
   pamkm = gvk * spm;
	msua[3] = 78;
	qdvx[2] = 18;
	int xhfelf = 36;
	hlufvmhg[1] = 13;
	for(int i = 1; i < 4; i++){
		if (*msua < *(msua+i)){
			*msua = *(msua+i);
		}
	}
	int tmazo[4];
	int vcrwh;
	tmazo[0] = 67;
	vcrwh = xhfelf + htw;
	nvlpl[4] = 71;
	cwxnbh[0] = 94;
	tmazo[1] = 8;
	hlufvmhg[2] = 68;
	hlufvmhg[3] = 11;
	nvlpl[5] = 19;
	hlufvmhg[4] = 74;
   gvk = spm + 6;
	hlufvmhg[5] = 7;
	dnv = (int*)calloc(7, sizeof(int));
	dnv[0] = 48;
	qdvx[3] = 54;
	tmazo[2] = 46;
	cwxnbh[1] = 83;
	dnv[1] = 25;
	nvlpl[6] = 52;
	nvlpl[7] = 95;
	nvlpl[8] = 33;
	dnv[2] = 23;
	cwxnbh[2] = 27;
	htw = htw * 2;
	nvlpl[9] = 12;
	dnv[3] = 68;
	qdvx[4] = 42;
	tmazo[3] = 15;
	vcrwh = xhfelf + htw;
	hlufvmhg[6] = 30;
	hlufvmhg[7] = 10;
	hlufvmhg[8] = 94;
	cwxnbh[3] = 63;
	for(int i = 1; i < 4; i++){
		if (*cwxnbh < *(cwxnbh+i)){
			*cwxnbh = *(cwxnbh+i);
		}
	}
	emzqo[0] = 40;
	qdvx[5] = 77;
	qdvx[6] = 45;
	for (int i = 1; i < 4; i++){
		if (tmazo[0] < tmazo[i]){
			tmazo[0] = tmazo[i];
		}
	}
	emzqo[1] = 1;
	nvlpl[10] = 7;
	hlufvmhg[9] = 38;
	dnv[4] = 43;
	hlufvmhg[10] = 6;
	for(int i = 1; i < 7; i++){
		if (*qdvx < *(qdvx+i)){
			*qdvx = *(qdvx+i);
		}
	}
	hlufvmhg[11] = 31;
	hlufvmhg[12] = 34;
	for(int i = 1; i < 11; i++){
		if (*nvlpl < *(nvlpl+i)){
			*nvlpl = *(nvlpl+i);
		}
	}
	dnv[5] = 74;
	hlufvmhg[13] = 38;
	emzqo[2] = 21;
	for (int i = 1; i < 3; i++){
		if (emzqo[0] < emzqo[i]){
			emzqo[0] = emzqo[i];
		}
	}
	for (int i = 1; i < 14; i++){
		if (hlufvmhg[0] < hlufvmhg[i]){
			hlufvmhg[0] = hlufvmhg[i];
		}
	}
	dnv[6] = 64;
	for(int i = 1; i < 7; i++){
		if (*dnv < *(dnv+i)){
			*dnv = *(dnv+i);
		}
	}
}

int main(int argc, char** argv){
	qnhdi(argv[1]);
	printf("done");
	return 0;
}
