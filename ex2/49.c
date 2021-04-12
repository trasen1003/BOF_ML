#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void yuzekd(char* gilqioa){
	int *fufxlry;
	int bsgtu[15];
	char lbo [202];
	bsgtu[0] = 49;
	strcpy(lbo, gilqioa);
	fufxlry = (int*)calloc(13, sizeof(int));
	fufxlry[0] = 64;
	fufxlry[1] = 92;
	bsgtu[1] = 79;
	bsgtu[2] = 78;
	fufxlry[2] = 28;
	fufxlry[3] = 100;
	fufxlry[4] = 29;
	int pad[3];
	pad[0] = 44;
	bsgtu[3] = 52;
	fufxlry[5] = 38;
	pad[1] = 4;
	pad[2] = 18;
	for (int i = 1; i < 3; i++){
		if (pad[0] < pad[i]){
			pad[0] = pad[i];
		}
	}
	bsgtu[4] = 2;
	bsgtu[5] = 78;
	bsgtu[6] = 13;
	bsgtu[7] = 1;
	fufxlry[6] = 31;
	fufxlry[7] = 83;
	bsgtu[8] = 91;
	fufxlry[8] = 23;
	fufxlry[9] = 62;
	bsgtu[9] = 64;
	fufxlry[10] = 29;
	bsgtu[10] = 46;
	bsgtu[11] = 3;
	fufxlry[11] = 96;
	fufxlry[12] = 19;
	for(int i = 1; i < 13; i++){
		if (*fufxlry < *(fufxlry+i)){
			*fufxlry = *(fufxlry+i);
		}
	}
	bsgtu[12] = 62;
	bsgtu[13] = 31;
	bsgtu[14] = 53;
	for (int i = 1; i < 15; i++){
		if (bsgtu[0] < bsgtu[i]){
			bsgtu[0] = bsgtu[i];
		}
	}
}

int main(int argc, char** argv){
	yuzekd(argv[1]);
	printf("done");
	return 0;
}
