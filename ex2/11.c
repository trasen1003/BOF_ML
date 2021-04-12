#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void rdu(char* yzunfwf){
	int idvh[7];
	int bimoa = 53;
	char cawtq [22];
	int *ghf;
	idvh[0] = 47;
	for(int i=0; i < sizeof(yzunfwf); i++){
		cawtq[i] = yzunfwf[i];
	}
	int *hahmiwi;
	idvh[1] = 89;
	idvh[2] = 43;
	idvh[3] = 98;
	int mci = 19;
	int xohel = 34;
	int vxtuj;
	ghf = (int*)calloc(15, sizeof(int));
	int vqrudgio = 18;
	int dwepms;
	int ibxo = 58;
	int xggztwoj = 14;
	ghf[0] = 94;
   bimoa = xohel + 6;
	ghf[1] = 42;
	ghf[2] = 84;
	vxtuj = xohel + bimoa;
	vxtuj = xohel + bimoa;
	ghf[3] = 66;
	int etnhk;
	etnhk = xggztwoj + ibxo;
	hahmiwi = (int*)calloc(10, sizeof(int));
	ghf[4] = 14;
	ghf[5] = 46;
	hahmiwi[0] = 7;
	hahmiwi[1] = 9;
	dwepms = mci - vqrudgio;
	dwepms = mci - vqrudgio;
	hahmiwi[2] = 71;
	idvh[4] = 85;
	hahmiwi[3] = 73;
	hahmiwi[4] = 96;
	idvh[5] = 95;
	ghf[6] = 18;
	vxtuj = xohel + bimoa;
	dwepms = vqrudgio + mci;
   mci = vqrudgio + 6;
   vxtuj = bimoa * xohel;
	ghf[7] = 6;
	hahmiwi[5] = 96;
	ghf[8] = 5;
	ghf[9] = 60;
	idvh[6] = 10;
	ghf[10] = 26;
	hahmiwi[6] = 19;
	for (int i = 1; i < 7; i++){
		if (idvh[0] < idvh[i]){
			idvh[0] = idvh[i];
		}
	}
	hahmiwi[7] = 40;
	ghf[11] = 74;
	hahmiwi[8] = 48;
	ghf[12] = 27;
	hahmiwi[9] = 51;
	ghf[13] = 86;
	ghf[14] = 93;
	for(int i = 1; i < 15; i++){
		if (*ghf < *(ghf+i)){
			*ghf = *(ghf+i);
		}
	}
	for(int i = 1; i < 10; i++){
		if (*hahmiwi < *(hahmiwi+i)){
			*hahmiwi = *(hahmiwi+i);
		}
	}
}

int main(int argc, char** argv){
	rdu(argv[1]);
	printf("done");
	return 0;
}
