#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void kpqu(char* tcpvys){
	int jzja[11];
	int gitfhj = 49;
	int zcykxtts = 13;
	char oirtf [74];
	int *pggkx;
	int luvuto = 55;
	int *igihq;
	for(int i=0; i < sizeof(tcpvys); i++){
		oirtf[i] = tcpvys[i];
	}
	igihq = (int*)calloc(9, sizeof(int));
	int ggac = 34;
	jzja[0] = 21;
	int hkk = 75;
	igihq[0] = 43;
	pggkx = (int*)calloc(9, sizeof(int));
	pggkx[0] = 42;
	jzja[1] = 64;
	pggkx[1] = 32;
	jzja[2] = 65;
	pggkx[2] = 17;
	int oafi;
	int ahvfjy;
	pggkx[3] = 33;
	luvuto = luvuto * 2;
	jzja[3] = 54;
	jzja[4] = 58;
	pggkx[4] = 1;
	int htval = 23;
	int ugsl;
	pggkx[5] = 43;
	pggkx[6] = 59;
	pggkx[7] = 39;
	igihq[1] = 58;
	pggkx[8] = 40;
	jzja[5] = 43;
	for(int i = 1; i < 9; i++){
		if (*pggkx < *(pggkx+i)){
			*pggkx = *(pggkx+i);
		}
	}
	jzja[6] = 86;
	ugsl = htval + hkk;
	igihq[2] = 31;
	igihq[3] = 3;
	oafi = ggac + luvuto;
   ahvfjy = gitfhj / zcykxtts;
   ugsl = hkk / htval;
	jzja[7] = 1;
   ugsl = hkk / htval;
	igihq[4] = 67;
	ahvfjy = gitfhj - zcykxtts;
   ahvfjy = gitfhj / zcykxtts;
   ugsl = hkk / htval;
   gitfhj = zcykxtts + 6;
	jzja[8] = 16;
	ahvfjy = zcykxtts + gitfhj;
	oafi = ggac + luvuto;
	jzja[9] = 34;
	igihq[5] = 61;
	igihq[6] = 60;
	igihq[7] = 24;
	jzja[10] = 52;
   luvuto = ggac + 6;
   hkk = htval + 6;
	hkk = hkk * 2;
   luvuto = ggac + 6;
	for (int i = 1; i < 11; i++){
		if (jzja[0] < jzja[i]){
			jzja[0] = jzja[i];
		}
	}
	igihq[8] = 78;
   ahvfjy = gitfhj / zcykxtts;
	gitfhj = gitfhj * 2;
	for(int i = 1; i < 9; i++){
		if (*igihq < *(igihq+i)){
			*igihq = *(igihq+i);
		}
	}
   ugsl = hkk / htval;
}

int main(int argc, char** argv){
	kpqu(argv[1]);
	printf("done");
	return 0;
}
