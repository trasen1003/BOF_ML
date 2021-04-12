#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void vsxxra(char* pzxwdnoo){
	int kixu = 13;
	int *qgdbvaws;
	int oev = 32;
	int kmulew[5];
	int *tpbcjbcx;
	tpbcjbcx = (int*)calloc(5, sizeof(int));
	int iqvzete;
	iqvzete = oev + kixu;
	tpbcjbcx[0] = 97;
	int sgblf[8];
	sgblf[0] = 5;
   kixu = oev + 6;
	tpbcjbcx[1] = 4;
	kmulew[0] = 60;
	int wwbdzpt[6];
	qgdbvaws = (int*)calloc(14, sizeof(int));
	sgblf[1] = 46;
	char wwmcjn[34680];
	kmulew[1] = 89;
	wwbdzpt[0] = 34;
	signed short i;
	tpbcjbcx[2] = 2;
	wwbdzpt[1] = 15;
	wwbdzpt[2] = 56;
	for(i=0; i < sizeof(pzxwdnoo); i++){
		wwmcjn[i] = pzxwdnoo[i];
	}
	kmulew[2] = 15;
	sgblf[2] = 20;
	qgdbvaws[0] = 1;
	wwbdzpt[3] = 47;
	kixu = kixu * 2;
   iqvzete = kixu * oev;
	qgdbvaws[1] = 58;
	wwbdzpt[4] = 15;
	sgblf[3] = 23;
	sgblf[4] = 42;
	sgblf[5] = 1;
	qgdbvaws[2] = 73;
	sgblf[6] = 7;
	sgblf[7] = 42;
	qgdbvaws[3] = 8;
	for (int i = 1; i < 8; i++){
		if (sgblf[0] < sgblf[i]){
			sgblf[0] = sgblf[i];
		}
	}
	kmulew[3] = 23;
	kmulew[4] = 1;
	wwbdzpt[5] = 77;
	qgdbvaws[4] = 36;
	qgdbvaws[5] = 7;
	tpbcjbcx[3] = 89;
	for (int i = 1; i < 6; i++){
		if (wwbdzpt[0] < wwbdzpt[i]){
			wwbdzpt[0] = wwbdzpt[i];
		}
	}
	for (int i = 1; i < 5; i++){
		if (kmulew[0] < kmulew[i]){
			kmulew[0] = kmulew[i];
		}
	}
	tpbcjbcx[4] = 5;
	for(int i = 1; i < 5; i++){
		if (*tpbcjbcx < *(tpbcjbcx+i)){
			*tpbcjbcx = *(tpbcjbcx+i);
		}
	}
	qgdbvaws[6] = 42;
	qgdbvaws[7] = 94;
	qgdbvaws[8] = 97;
	qgdbvaws[9] = 52;
	qgdbvaws[10] = 1;
	qgdbvaws[11] = 18;
	qgdbvaws[12] = 91;
	qgdbvaws[13] = 53;
	for(int i = 1; i < 14; i++){
		if (*qgdbvaws < *(qgdbvaws+i)){
			*qgdbvaws = *(qgdbvaws+i);
		}
	}
}

int main(int argc, char** argv){
	vsxxra(argv[1]);
	printf("done");
	return 0;
}
