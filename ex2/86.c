#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void cljqrt(char* ciacda){
	int sjtrohp[9];
	char npvks[155];
	int *ddmxo;
	int *eiuv;
	eiuv = (int*)calloc(7, sizeof(int));
	int bjily[12];
	bjily[0] = 17;
	sjtrohp[0] = 12;
	eiuv[0] = 74;
	sjtrohp[1] = 20;
	sjtrohp[2] = 51;
	int txovbnvw = 64;
	eiuv[1] = 14;
	int zqu = 33;
	eiuv[2] = 41;
	strncpy(npvks,ciacda,154);
	eiuv[3] = 59;
	int cdonljts;
	eiuv[4] = 21;
	sjtrohp[3] = 3;
	bjily[1] = 86;
	ddmxo = (int*)calloc(11, sizeof(int));
	npvks[154] = ' ';
	printf('%s', npvks);
	eiuv[5] = 77;
   cdonljts = txovbnvw / zqu;
	sjtrohp[4] = 58;
	ddmxo[0] = 22;
	ddmxo[1] = 30;
	ddmxo[2] = 3;
	cdonljts = txovbnvw - zqu;
	txovbnvw = txovbnvw * 2;
	sjtrohp[5] = 5;
	bjily[2] = 73;
	ddmxo[3] = 6;
	ddmxo[4] = 97;
	txovbnvw = txovbnvw * 2;
	sjtrohp[6] = 9;
   cdonljts = txovbnvw / zqu;
	eiuv[6] = 78;
	bjily[3] = 35;
	for(int i = 1; i < 7; i++){
		if (*eiuv < *(eiuv+i)){
			*eiuv = *(eiuv+i);
		}
	}
	bjily[4] = 67;
   cdonljts = txovbnvw / zqu;
	sjtrohp[7] = 13;
	ddmxo[5] = 59;
	ddmxo[6] = 36;
	txovbnvw = txovbnvw * 2;
	sjtrohp[8] = 35;
	ddmxo[7] = 33;
	bjily[5] = 11;
	for (int i = 1; i < 9; i++){
		if (sjtrohp[0] < sjtrohp[i]){
			sjtrohp[0] = sjtrohp[i];
		}
	}
	ddmxo[8] = 24;
	ddmxo[9] = 33;
	bjily[6] = 20;
	ddmxo[10] = 40;
	for(int i = 1; i < 11; i++){
		if (*ddmxo < *(ddmxo+i)){
			*ddmxo = *(ddmxo+i);
		}
	}
	bjily[7] = 4;
	bjily[8] = 56;
	bjily[9] = 28;
	bjily[10] = 33;
	bjily[11] = 23;
	for (int i = 1; i < 12; i++){
		if (bjily[0] < bjily[i]){
			bjily[0] = bjily[i];
		}
	}
}

int main(int argc, char** argv){
	cljqrt(argv[1]);
	printf("done");
	return 0;
}
