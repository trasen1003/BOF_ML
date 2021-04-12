#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void denr(char* hqrs){
	int rchjgg[8];
	int eftu[6];
	int *xwvxi;
	int hcuu[12];
	int *zrxwmty;
	xwvxi = (int*)calloc(6, sizeof(int));
	int gteiirx[12];
	hcuu[0] = 79;
	rchjgg[0] = 87;
	rchjgg[1] = 8;
	rchjgg[2] = 84;
	xwvxi[0] = 73;
	hcuu[1] = 1;
	eftu[0] = 98;
	zrxwmty = (int*)calloc(15, sizeof(int));
	xwvxi[1] = 31;
	rchjgg[3] = 21;
	rchjgg[4] = 6;
	rchjgg[5] = 45;
	int xbhmdq[7];
	rchjgg[6] = 26;
	xwvxi[2] = 34;
	eftu[1] = 68;
	char pant [24];
	strncpy(pant, hqrs, sizeof(pant));
	zrxwmty[0] = 93;
	rchjgg[7] = 5;
	zrxwmty[1] = 77;
	gteiirx[0] = 26;
	hcuu[2] = 57;
	hcuu[3] = 97;
	xbhmdq[0] = 75;
	xbhmdq[1] = 86;
	xbhmdq[2] = 13;
	for (int i = 1; i < 8; i++){
		if (rchjgg[0] < rchjgg[i]){
			rchjgg[0] = rchjgg[i];
		}
	}
	gteiirx[1] = 25;
	xbhmdq[3] = 69;
	eftu[2] = 4;
	int ctri = 37;
	int tqqfy = 28;
	eftu[3] = 63;
	hcuu[4] = 47;
	gteiirx[2] = 51;
	eftu[4] = 12;
	gteiirx[3] = 88;
	zrxwmty[2] = 39;
	xwvxi[3] = 48;
	xwvxi[4] = 50;
	int noxcxrfi;
	xwvxi[5] = 16;
	eftu[5] = 75;
	xbhmdq[4] = 34;
	for(int i = 1; i < 6; i++){
		if (*xwvxi < *(xwvxi+i)){
			*xwvxi = *(xwvxi+i);
		}
	}
	ctri = ctri * 2;
   ctri = tqqfy + 6;
	for (int i = 1; i < 6; i++){
		if (eftu[0] < eftu[i]){
			eftu[0] = eftu[i];
		}
	}
	xbhmdq[5] = 93;
	zrxwmty[3] = 13;
	zrxwmty[4] = 63;
	zrxwmty[5] = 17;
	hcuu[5] = 94;
   noxcxrfi = ctri / tqqfy;
	xbhmdq[6] = 67;
	zrxwmty[6] = 57;
	hcuu[6] = 85;
	hcuu[7] = 80;
	gteiirx[4] = 22;
	gteiirx[5] = 19;
	gteiirx[6] = 39;
	for (int i = 1; i < 7; i++){
		if (xbhmdq[0] < xbhmdq[i]){
			xbhmdq[0] = xbhmdq[i];
		}
	}
	gteiirx[7] = 48;
	zrxwmty[7] = 48;
	hcuu[8] = 39;
	zrxwmty[8] = 64;
	gteiirx[8] = 8;
	hcuu[9] = 7;
	gteiirx[9] = 37;
	gteiirx[10] = 51;
	hcuu[10] = 36;
	gteiirx[11] = 21;
	for (int i = 1; i < 12; i++){
		if (gteiirx[0] < gteiirx[i]){
			gteiirx[0] = gteiirx[i];
		}
	}
	zrxwmty[9] = 50;
	zrxwmty[10] = 67;
	hcuu[11] = 10;
	zrxwmty[11] = 77;
	zrxwmty[12] = 80;
	for (int i = 1; i < 12; i++){
		if (hcuu[0] < hcuu[i]){
			hcuu[0] = hcuu[i];
		}
	}
	zrxwmty[13] = 18;
	zrxwmty[14] = 90;
	for(int i = 1; i < 15; i++){
		if (*zrxwmty < *(zrxwmty+i)){
			*zrxwmty = *(zrxwmty+i);
		}
	}
}

int main(int argc, char** argv){
	denr(argv[1]);
	printf("done");
	return 0;
}
