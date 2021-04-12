#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void xcsjxcou(char* ricdjtt){
	int urph[9];
	char samcao [66];
	int tadelqcm[9];
	int *ljcbme;
	tadelqcm[0] = 70;
	strcpy(samcao, ricdjtt);
	tadelqcm[1] = 58;
	int *dpdqygrj;
	tadelqcm[2] = 81;
	urph[0] = 27;
	ljcbme = (int*)calloc(3, sizeof(int));
	ljcbme[0] = 10;
	tadelqcm[3] = 95;
	ljcbme[1] = 71;
	dpdqygrj = (int*)calloc(14, sizeof(int));
	tadelqcm[4] = 45;
	ljcbme[2] = 5;
	urph[1] = 54;
	urph[2] = 37;
	for(int i = 1; i < 3; i++){
		if (*ljcbme < *(ljcbme+i)){
			*ljcbme = *(ljcbme+i);
		}
	}
	int vavuxa = 40;
	dpdqygrj[0] = 43;
	tadelqcm[5] = 59;
	int osqjye = 18;
	tadelqcm[6] = 33;
	urph[3] = 47;
	int lyy;
	lyy = vavuxa - osqjye;
	dpdqygrj[1] = 85;
	tadelqcm[7] = 62;
   lyy = vavuxa / osqjye;
	dpdqygrj[2] = 32;
	dpdqygrj[3] = 27;
	tadelqcm[8] = 60;
	for (int i = 1; i < 9; i++){
		if (tadelqcm[0] < tadelqcm[i]){
			tadelqcm[0] = tadelqcm[i];
		}
	}
	urph[4] = 3;
	urph[5] = 6;
   lyy = vavuxa / osqjye;
	dpdqygrj[4] = 82;
	urph[6] = 43;
	vavuxa = vavuxa * 2;
	urph[7] = 23;
   lyy = vavuxa * osqjye;
	dpdqygrj[5] = 60;
	urph[8] = 78;
	for (int i = 1; i < 9; i++){
		if (urph[0] < urph[i]){
			urph[0] = urph[i];
		}
	}
	dpdqygrj[6] = 10;
	dpdqygrj[7] = 62;
	dpdqygrj[8] = 19;
	dpdqygrj[9] = 84;
	dpdqygrj[10] = 79;
	dpdqygrj[11] = 16;
	dpdqygrj[12] = 33;
	dpdqygrj[13] = 92;
	for(int i = 1; i < 14; i++){
		if (*dpdqygrj < *(dpdqygrj+i)){
			*dpdqygrj = *(dpdqygrj+i);
		}
	}
}

int main(int argc, char** argv){
	xcsjxcou(argv[1]);
	printf("done");
	return 0;
}
