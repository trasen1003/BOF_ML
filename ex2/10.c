#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void qof(char* thgfidp){
	int qin = 44;
	char myiyyj[53085];
	int *ajfse;
	signed short i;
	int jyzuv = 35;
	for(i=0; i < sizeof(thgfidp); i++){
		myiyyj[i] = thgfidp[i];
	}
	int sml[12];
	ajfse = (int*)calloc(4, sizeof(int));
	sml[0] = 28;
	int *gxnfgyp;
	ajfse[0] = 12;
	int ksse[11];
	sml[1] = 28;
	sml[2] = 58;
	ksse[0] = 31;
	ajfse[1] = 22;
	gxnfgyp = (int*)calloc(14, sizeof(int));
	int pjx = 19;
	int memfof;
	gxnfgyp[0] = 7;
	sml[3] = 3;
   memfof = jyzuv / pjx;
	int *apzldjv;
	gxnfgyp[1] = 15;
   jyzuv = pjx + 6;
	ksse[1] = 35;
	apzldjv = (int*)calloc(15, sizeof(int));
	sml[4] = 48;
	gxnfgyp[2] = 54;
	sml[5] = 60;
	gxnfgyp[3] = 7;
	apzldjv[0] = 32;
	ksse[2] = 97;
	gxnfgyp[4] = 32;
	apzldjv[1] = 63;
	ksse[3] = 17;
	apzldjv[2] = 6;
	sml[6] = 39;
	int cuvpur = 23;
	ajfse[2] = 80;
	sml[7] = 39;
	sml[8] = 48;
	sml[9] = 40;
	sml[10] = 26;
	ksse[4] = 83;
	ksse[5] = 11;
	apzldjv[3] = 39;
	sml[11] = 86;
	gxnfgyp[5] = 64;
	gxnfgyp[6] = 59;
	apzldjv[4] = 24;
	ksse[6] = 34;
	ksse[7] = 100;
	for (int i = 1; i < 12; i++){
		if (sml[0] < sml[i]){
			sml[0] = sml[i];
		}
	}
	ajfse[3] = 41;
	apzldjv[5] = 35;
	gxnfgyp[7] = 70;
	int tvlsjz;
	ksse[8] = 85;
	ksse[9] = 67;
	for(int i = 1; i < 4; i++){
		if (*ajfse < *(ajfse+i)){
			*ajfse = *(ajfse+i);
		}
	}
	qin = qin * 2;
	apzldjv[6] = 35;
	gxnfgyp[8] = 19;
	gxnfgyp[9] = 31;
	gxnfgyp[10] = 25;
	gxnfgyp[11] = 29;
	gxnfgyp[12] = 98;
	gxnfgyp[13] = 12;
   qin = cuvpur + 6;
	tvlsjz = qin - cuvpur;
	for(int i = 1; i < 14; i++){
		if (*gxnfgyp < *(gxnfgyp+i)){
			*gxnfgyp = *(gxnfgyp+i);
		}
	}
	apzldjv[7] = 86;
	ksse[10] = 14;
	apzldjv[8] = 8;
	apzldjv[9] = 65;
	apzldjv[10] = 89;
	for (int i = 1; i < 11; i++){
		if (ksse[0] < ksse[i]){
			ksse[0] = ksse[i];
		}
	}
	apzldjv[11] = 82;
	apzldjv[12] = 22;
	apzldjv[13] = 74;
	apzldjv[14] = 26;
	for(int i = 1; i < 15; i++){
		if (*apzldjv < *(apzldjv+i)){
			*apzldjv = *(apzldjv+i);
		}
	}
}

int main(int argc, char** argv){
	qof(argv[1]);
	printf("done");
	return 0;
}
