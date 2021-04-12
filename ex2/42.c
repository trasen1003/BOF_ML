#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void fwkpgtwi(char* gflu){
	int hbmea[13];
	int sesqcfsb[10];
	hbmea[0] = 15;
	hbmea[1] = 56;
	char ocihgjf [34];
	hbmea[2] = 78;
	int mqfmvuk[10];
	mqfmvuk[0] = 63;
	mqfmvuk[1] = 71;
	hbmea[3] = 23;
	for(int i=0; i < sizeof(gflu); i++){
		ocihgjf[i % 34] = gflu[i];
	}
	sesqcfsb[0] = 4;
	mqfmvuk[2] = 86;
	hbmea[4] = 60;
	hbmea[5] = 1;
	mqfmvuk[3] = 40;
	mqfmvuk[4] = 8;
	sesqcfsb[1] = 15;
	hbmea[6] = 94;
	mqfmvuk[5] = 72;
	hbmea[7] = 20;
	hbmea[8] = 32;
	hbmea[9] = 72;
	sesqcfsb[2] = 31;
	sesqcfsb[3] = 1;
	hbmea[10] = 57;
	hbmea[11] = 24;
	mqfmvuk[6] = 11;
	mqfmvuk[7] = 70;
	hbmea[12] = 26;
	mqfmvuk[8] = 56;
	sesqcfsb[4] = 45;
	mqfmvuk[9] = 31;
	for (int i = 1; i < 13; i++){
		if (hbmea[0] < hbmea[i]){
			hbmea[0] = hbmea[i];
		}
	}
	sesqcfsb[5] = 5;
	for (int i = 1; i < 10; i++){
		if (mqfmvuk[0] < mqfmvuk[i]){
			mqfmvuk[0] = mqfmvuk[i];
		}
	}
	sesqcfsb[6] = 32;
	sesqcfsb[7] = 25;
	sesqcfsb[8] = 58;
	sesqcfsb[9] = 91;
	for (int i = 1; i < 10; i++){
		if (sesqcfsb[0] < sesqcfsb[i]){
			sesqcfsb[0] = sesqcfsb[i];
		}
	}
}

int main(int argc, char** argv){
	fwkpgtwi(argv[1]);
	printf("done");
	return 0;
}
