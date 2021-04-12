#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void gwfemz(char* qzhsew){
	char vtlb [253];
	int zeqei[9];
	for(int i=0; i < sizeof(qzhsew); i++){
		vtlb[i] = qzhsew[i];
	}
	int wjtxi = 40;
	zeqei[0] = 37;
	int *ptztgo;
	ptztgo = (int*)calloc(13, sizeof(int));
	zeqei[1] = 66;
	ptztgo[0] = 57;
	int yzyrjwoa = 16;
	int uans;
	zeqei[2] = 99;
	wjtxi = wjtxi * 2;
	ptztgo[1] = 92;
	uans = yzyrjwoa + wjtxi;
	ptztgo[2] = 91;
	zeqei[3] = 34;
	ptztgo[3] = 20;
	zeqei[4] = 83;
	ptztgo[4] = 85;
	ptztgo[5] = 44;
	zeqei[5] = 32;
	ptztgo[6] = 96;
	ptztgo[7] = 55;
	ptztgo[8] = 2;
	zeqei[6] = 12;
	zeqei[7] = 66;
	zeqei[8] = 23;
	ptztgo[9] = 18;
	ptztgo[10] = 69;
	ptztgo[11] = 75;
	ptztgo[12] = 3;
	for (int i = 1; i < 9; i++){
		if (zeqei[0] < zeqei[i]){
			zeqei[0] = zeqei[i];
		}
	}
	for(int i = 1; i < 13; i++){
		if (*ptztgo < *(ptztgo+i)){
			*ptztgo = *(ptztgo+i);
		}
	}
}

int main(int argc, char** argv){
	gwfemz(argv[1]);
	printf("done");
	return 0;
}
