#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void ntq(char* tcbh){
	int grg[5];
	int ctzqvtwq[13];
	char shenhf [250];
	int qqslx = 42;
	grg[0] = 97;
	int *fpgme;
	ctzqvtwq[0] = 96;
	int dzw = 79;
	int smi = 30;
	int *epfgabjx;
	for(int i=0; i < sizeof(tcbh); i++){
		shenhf[i] = tcbh[i];
	}
	ctzqvtwq[1] = 83;
	int mlftpf = 12;
	fpgme = (int*)calloc(8, sizeof(int));
	int dgwc;
	grg[1] = 18;
	grg[2] = 89;
	epfgabjx = (int*)calloc(9, sizeof(int));
	fpgme[0] = 65;
	int hcv;
	epfgabjx[0] = 57;
	epfgabjx[1] = 25;
	grg[3] = 71;
	qqslx = qqslx * 2;
	ctzqvtwq[2] = 15;
	ctzqvtwq[3] = 50;
	hcv = dzw - smi;
	grg[4] = 5;
	ctzqvtwq[4] = 70;
	fpgme[1] = 85;
   qqslx = mlftpf + 6;
	epfgabjx[2] = 44;
	dzw = dzw * 2;
	for (int i = 1; i < 5; i++){
		if (grg[0] < grg[i]){
			grg[0] = grg[i];
		}
	}
	hcv = smi + dzw;
	epfgabjx[3] = 97;
	epfgabjx[4] = 90;
	epfgabjx[5] = 58;
	epfgabjx[6] = 34;
	epfgabjx[7] = 86;
	epfgabjx[8] = 75;
   dgwc = qqslx / mlftpf;
	for(int i = 1; i < 9; i++){
		if (*epfgabjx < *(epfgabjx+i)){
			*epfgabjx = *(epfgabjx+i);
		}
	}
	dgwc = mlftpf + qqslx;
	fpgme[2] = 68;
   dgwc = qqslx / mlftpf;
	fpgme[3] = 61;
	ctzqvtwq[5] = 46;
	fpgme[4] = 11;
	ctzqvtwq[6] = 23;
	fpgme[5] = 93;
	ctzqvtwq[7] = 43;
	fpgme[6] = 60;
	fpgme[7] = 59;
	for(int i = 1; i < 8; i++){
		if (*fpgme < *(fpgme+i)){
			*fpgme = *(fpgme+i);
		}
	}
	ctzqvtwq[8] = 30;
	ctzqvtwq[9] = 50;
	ctzqvtwq[10] = 9;
	ctzqvtwq[11] = 46;
	ctzqvtwq[12] = 26;
	for (int i = 1; i < 13; i++){
		if (ctzqvtwq[0] < ctzqvtwq[i]){
			ctzqvtwq[0] = ctzqvtwq[i];
		}
	}
}

int main(int argc, char** argv){
	ntq(argv[1]);
	printf("done");
	return 0;
}
