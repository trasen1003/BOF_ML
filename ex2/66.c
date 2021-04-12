#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void bzskaon(char* ecdmmev){
	int kmlimulk = 10;
	char qmu [207];
	int ehud = 51;
	int tzcn = 26;
	strncpy(qmu, ecdmmev, sizeof(qmu));
	int *owod;
	int pingun[8];
	int *tfspmqyu;
	tfspmqyu = (int*)calloc(9, sizeof(int));
	pingun[0] = 83;
	int *scy;
	pingun[1] = 47;
	int onngtrrv = 34;
	int aabtvkum;
	int uec;
	tfspmqyu[0] = 45;
	tfspmqyu[1] = 35;
	scy = (int*)calloc(9, sizeof(int));
	scy[0] = 97;
	owod = (int*)calloc(10, sizeof(int));
	scy[1] = 88;
	scy[2] = 97;
	uec = tzcn + kmlimulk;
   ehud = onngtrrv + 6;
	owod[0] = 25;
	owod[1] = 5;
	pingun[2] = 42;
	aabtvkum = ehud - onngtrrv;
	owod[2] = 76;
	owod[3] = 49;
	tfspmqyu[2] = 22;
	tfspmqyu[3] = 10;
	owod[4] = 27;
	pingun[3] = 43;
	pingun[4] = 17;
	tfspmqyu[4] = 9;
	scy[3] = 60;
	scy[4] = 10;
	pingun[5] = 89;
	tfspmqyu[5] = 69;
	owod[5] = 59;
	scy[5] = 100;
   aabtvkum = ehud / onngtrrv;
	pingun[6] = 47;
	owod[6] = 12;
	tfspmqyu[6] = 4;
	owod[7] = 93;
   ehud = onngtrrv + 6;
	pingun[7] = 100;
	for (int i = 1; i < 8; i++){
		if (pingun[0] < pingun[i]){
			pingun[0] = pingun[i];
		}
	}
	scy[6] = 83;
	tfspmqyu[7] = 64;
	tfspmqyu[8] = 16;
	owod[8] = 14;
	scy[7] = 54;
	scy[8] = 48;
	for(int i = 1; i < 9; i++){
		if (*tfspmqyu < *(tfspmqyu+i)){
			*tfspmqyu = *(tfspmqyu+i);
		}
	}
   aabtvkum = ehud * onngtrrv;
	owod[9] = 48;
	for(int i = 1; i < 10; i++){
		if (*owod < *(owod+i)){
			*owod = *(owod+i);
		}
	}
	for(int i = 1; i < 9; i++){
		if (*scy < *(scy+i)){
			*scy = *(scy+i);
		}
	}
}

int main(int argc, char** argv){
	bzskaon(argv[1]);
	printf("done");
	return 0;
}
