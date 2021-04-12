#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void juo(char* txl){
	int qsj = 36;
	int *czziwm;
	int *dtte;
	int pudctqie = 1;
	int buhkm[7];
	char njyhcf [94];
	int vcqkwmq = 15;
	int *jwdxmxl;
	int uvlnah;
	for(int i=0; i < sizeof(txl); i++){
		njyhcf[i] = txl[i];
	}
	dtte = (int*)calloc(14, sizeof(int));
   uvlnah = qsj / vcqkwmq;
	uvlnah = qsj - vcqkwmq;
	dtte[0] = 68;
	buhkm[0] = 97;
	buhkm[1] = 14;
	jwdxmxl = (int*)calloc(11, sizeof(int));
	int wtzo = 25;
	buhkm[2] = 43;
	buhkm[3] = 54;
	jwdxmxl[0] = 3;
   uvlnah = qsj / vcqkwmq;
	buhkm[4] = 39;
	dtte[1] = 32;
	dtte[2] = 34;
	czziwm = (int*)calloc(15, sizeof(int));
	int nvurctt;
	jwdxmxl[1] = 95;
	dtte[3] = 88;
	buhkm[5] = 93;
	buhkm[6] = 37;
	jwdxmxl[2] = 51;
	dtte[4] = 9;
	for (int i = 1; i < 7; i++){
		if (buhkm[0] < buhkm[i]){
			buhkm[0] = buhkm[i];
		}
	}
	czziwm[0] = 40;
   pudctqie = wtzo + 6;
	czziwm[1] = 87;
	dtte[5] = 6;
   nvurctt = pudctqie / wtzo;
	czziwm[2] = 25;
   nvurctt = pudctqie / wtzo;
	nvurctt = wtzo + pudctqie;
	dtte[6] = 87;
	jwdxmxl[3] = 92;
   nvurctt = pudctqie / wtzo;
   nvurctt = pudctqie / wtzo;
	dtte[7] = 61;
	dtte[8] = 78;
	dtte[9] = 30;
	dtte[10] = 62;
	czziwm[3] = 53;
	czziwm[4] = 90;
	jwdxmxl[4] = 90;
	jwdxmxl[5] = 37;
	dtte[11] = 71;
	jwdxmxl[6] = 14;
	czziwm[5] = 27;
	dtte[12] = 20;
	czziwm[6] = 48;
	dtte[13] = 52;
	jwdxmxl[7] = 11;
	czziwm[7] = 91;
	jwdxmxl[8] = 24;
	czziwm[8] = 53;
	for(int i = 1; i < 14; i++){
		if (*dtte < *(dtte+i)){
			*dtte = *(dtte+i);
		}
	}
	czziwm[9] = 60;
	czziwm[10] = 90;
	jwdxmxl[9] = 30;
	czziwm[11] = 41;
	jwdxmxl[10] = 15;
	for(int i = 1; i < 11; i++){
		if (*jwdxmxl < *(jwdxmxl+i)){
			*jwdxmxl = *(jwdxmxl+i);
		}
	}
	czziwm[12] = 80;
	czziwm[13] = 80;
	czziwm[14] = 95;
	for(int i = 1; i < 15; i++){
		if (*czziwm < *(czziwm+i)){
			*czziwm = *(czziwm+i);
		}
	}
}

int main(int argc, char** argv){
	juo(argv[1]);
	printf("done");
	return 0;
}
