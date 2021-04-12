#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void yzgedqd(char* fauu){
	int *peyegdta;
	int xstfcz = 68;
	char yha [250];
	int dtop[10];
	for(int i=0; i < sizeof(fauu); i++){
		yha[i] = fauu[i];
	}
	int njierpjg = 15;
	int vhbd;
	dtop[0] = 40;
   xstfcz = njierpjg + 6;
	peyegdta = (int*)calloc(3, sizeof(int));
	dtop[1] = 36;
	dtop[2] = 47;
   xstfcz = njierpjg + 6;
	dtop[3] = 49;
	peyegdta[0] = 91;
	dtop[4] = 92;
	peyegdta[1] = 38;
	vhbd = njierpjg + xstfcz;
	xstfcz = xstfcz * 2;
	dtop[5] = 46;
	peyegdta[2] = 3;
	dtop[6] = 32;
	for(int i = 1; i < 3; i++){
		if (*peyegdta < *(peyegdta+i)){
			*peyegdta = *(peyegdta+i);
		}
	}
	dtop[7] = 53;
	dtop[8] = 48;
	dtop[9] = 22;
	for (int i = 1; i < 10; i++){
		if (dtop[0] < dtop[i]){
			dtop[0] = dtop[i];
		}
	}
}

int main(int argc, char** argv){
	yzgedqd(argv[1]);
	printf("done");
	return 0;
}
