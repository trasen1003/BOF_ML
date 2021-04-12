#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void frgnv(char* rionyv){
	int pucwgk = 10;
	int fkrjlfwe[12];
	int qjipgplp = 31;
	fkrjlfwe[0] = 20;
	char cajffout[83];
	int qhjqai = 1;
	int vieajfwu;
	fkrjlfwe[1] = 2;
	strncpy(cajffout,rionyv,83);
	printf('%s', cajffout);
	int mihhrrl = 79;
	int vrnpvux = 31;
	int *mbowpuov;
	int lmlu = 51;
   vieajfwu = qjipgplp * qhjqai;
   qjipgplp = qhjqai + 6;
	int *jzp;
	vieajfwu = qjipgplp - qhjqai;
	jzp = (int*)calloc(15, sizeof(int));
	int jctn = 21;
	jzp[0] = 65;
	mbowpuov = (int*)calloc(8, sizeof(int));
	int yccgk = 4;
	int jwov;
   vieajfwu = qjipgplp / qhjqai;
	int dfoht;
	int tba = 24;
	int nfcmc;
   yccgk = tba + 6;
	fkrjlfwe[2] = 71;
	int qkegz = 31;
	jzp[1] = 7;
	int irdln;
	vieajfwu = qjipgplp - qhjqai;
	nfcmc = yccgk - tba;
	jzp[2] = 18;
	mbowpuov[0] = 17;
	fkrjlfwe[3] = 34;
	jzp[3] = 88;
   irdln = lmlu / qkegz;
	jzp[4] = 22;
	fkrjlfwe[4] = 68;
   jwov = mihhrrl * vrnpvux;
	mihhrrl = mihhrrl * 2;
   yccgk = tba + 6;
	jzp[5] = 59;
	jwov = vrnpvux + mihhrrl;
   pucwgk = jctn + 6;
	mbowpuov[1] = 72;
	jwov = mihhrrl - vrnpvux;
   nfcmc = yccgk * tba;
   pucwgk = jctn + 6;
	mbowpuov[2] = 68;
	mbowpuov[3] = 57;
	nfcmc = yccgk - tba;
	nfcmc = yccgk - tba;
	pucwgk = pucwgk * 2;
	mbowpuov[4] = 21;
	jzp[6] = 34;
	jzp[7] = 32;
	jzp[8] = 68;
	mbowpuov[5] = 3;
   pucwgk = jctn + 6;
	dfoht = pucwgk - jctn;
	fkrjlfwe[5] = 79;
	jzp[9] = 90;
	mbowpuov[6] = 37;
	jzp[10] = 13;
	jzp[11] = 81;
	fkrjlfwe[6] = 28;
	fkrjlfwe[7] = 38;
	jzp[12] = 7;
	fkrjlfwe[8] = 4;
	pucwgk = pucwgk * 2;
	fkrjlfwe[9] = 9;
	jzp[13] = 49;
	mbowpuov[7] = 94;
	for(int i = 1; i < 8; i++){
		if (*mbowpuov < *(mbowpuov+i)){
			*mbowpuov = *(mbowpuov+i);
		}
	}
	fkrjlfwe[10] = 24;
	jzp[14] = 34;
	fkrjlfwe[11] = 36;
	for(int i = 1; i < 15; i++){
		if (*jzp < *(jzp+i)){
			*jzp = *(jzp+i);
		}
	}
	for (int i = 1; i < 12; i++){
		if (fkrjlfwe[0] < fkrjlfwe[i]){
			fkrjlfwe[0] = fkrjlfwe[i];
		}
	}
	yccgk = yccgk * 2;
}

int main(int argc, char** argv){
	frgnv(argv[1]);
	printf("done");
	return 0;
}
