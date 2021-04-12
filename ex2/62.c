#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void reyotnyc(char* iune){
	int dhgzdju = 52;
	int enqaad = 64;
	int pxieiwjs[11];
	int bjgn = 13;
	pxieiwjs[0] = 52;
	char atxp [242];
	int txvncsqy = 10;
	pxieiwjs[1] = 89;
	int *lxohc;
	int daj;
	int *vhlmsr;
	int *egykogck;
	pxieiwjs[2] = 19;
	int dgvtc;
	egykogck = (int*)calloc(8, sizeof(int));
	pxieiwjs[3] = 64;
   dgvtc = dhgzdju * txvncsqy;
	lxohc = (int*)calloc(8, sizeof(int));
	lxohc[0] = 66;
	pxieiwjs[4] = 9;
	strcpy(atxp, iune);
   daj = enqaad * bjgn;
	vhlmsr = (int*)calloc(12, sizeof(int));
	daj = enqaad - bjgn;
	egykogck[0] = 39;
	pxieiwjs[5] = 67;
	dhgzdju = dhgzdju * 2;
	egykogck[1] = 1;
	egykogck[2] = 90;
	enqaad = enqaad * 2;
   dhgzdju = txvncsqy + 6;
   daj = enqaad * bjgn;
	pxieiwjs[6] = 24;
	daj = enqaad - bjgn;
	lxohc[1] = 17;
	lxohc[2] = 81;
	pxieiwjs[7] = 62;
	egykogck[3] = 35;
	vhlmsr[0] = 26;
	vhlmsr[1] = 28;
	lxohc[3] = 29;
	lxohc[4] = 45;
	egykogck[4] = 25;
	lxohc[5] = 74;
	pxieiwjs[8] = 53;
	vhlmsr[2] = 23;
	lxohc[6] = 25;
	vhlmsr[3] = 69;
	pxieiwjs[9] = 35;
	pxieiwjs[10] = 72;
	vhlmsr[4] = 69;
	lxohc[7] = 79;
	for (int i = 1; i < 11; i++){
		if (pxieiwjs[0] < pxieiwjs[i]){
			pxieiwjs[0] = pxieiwjs[i];
		}
	}
	for(int i = 1; i < 8; i++){
		if (*lxohc < *(lxohc+i)){
			*lxohc = *(lxohc+i);
		}
	}
	vhlmsr[5] = 17;
	vhlmsr[6] = 43;
	egykogck[5] = 45;
	egykogck[6] = 30;
	egykogck[7] = 45;
	for(int i = 1; i < 8; i++){
		if (*egykogck < *(egykogck+i)){
			*egykogck = *(egykogck+i);
		}
	}
	vhlmsr[7] = 46;
	vhlmsr[8] = 47;
	vhlmsr[9] = 16;
	vhlmsr[10] = 12;
	vhlmsr[11] = 59;
	for(int i = 1; i < 12; i++){
		if (*vhlmsr < *(vhlmsr+i)){
			*vhlmsr = *(vhlmsr+i);
		}
	}
}

int main(int argc, char** argv){
	reyotnyc(argv[1]);
	printf("done");
	return 0;
}
