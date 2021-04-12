#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void gbnrs(char* fcni){
	int *teg;
	int *mxv;
	int veekdxfg = 16;
	int cmesao = 59;
	int qybei[15];
	mxv = (int*)calloc(11, sizeof(int));
	int hjrzgm = 40;
	char wswenmf [165];
	int *vwheix;
	teg = (int*)calloc(12, sizeof(int));
	int rhbdw = 40;
	mxv[0] = 48;
	for(int i=0; i < sizeof(fcni); i++){
		wswenmf[i] = fcni[i];
	}
	vwheix = (int*)calloc(4, sizeof(int));
	int qrbpb;
	int *bhximzbn;
	qybei[0] = 7;
	mxv[1] = 73;
	bhximzbn = (int*)calloc(8, sizeof(int));
	teg[0] = 53;
	int scguts;
	vwheix[0] = 58;
	cmesao = cmesao * 2;
	qybei[1] = 43;
	teg[1] = 44;
	qybei[2] = 92;
	bhximzbn[0] = 5;
	qybei[3] = 90;
	mxv[2] = 63;
	teg[2] = 40;
	vwheix[1] = 18;
	scguts = cmesao - hjrzgm;
	qybei[4] = 98;
	bhximzbn[1] = 97;
	qrbpb = veekdxfg - rhbdw;
	mxv[3] = 11;
	mxv[4] = 62;
	bhximzbn[2] = 82;
	mxv[5] = 70;
	qybei[5] = 20;
	mxv[6] = 85;
	teg[3] = 32;
	mxv[7] = 86;
	mxv[8] = 3;
	bhximzbn[3] = 40;
	qrbpb = rhbdw + veekdxfg;
	veekdxfg = veekdxfg * 2;
	veekdxfg = veekdxfg * 2;
	mxv[9] = 4;
	qybei[6] = 87;
	bhximzbn[4] = 70;
	qybei[7] = 91;
	vwheix[2] = 36;
	vwheix[3] = 2;
   qrbpb = veekdxfg * rhbdw;
	mxv[10] = 14;
	teg[4] = 34;
	teg[5] = 14;
	for(int i = 1; i < 4; i++){
		if (*vwheix < *(vwheix+i)){
			*vwheix = *(vwheix+i);
		}
	}
	teg[6] = 49;
	teg[7] = 87;
	for(int i = 1; i < 11; i++){
		if (*mxv < *(mxv+i)){
			*mxv = *(mxv+i);
		}
	}
	qybei[8] = 37;
	qybei[9] = 84;
	bhximzbn[5] = 87;
	bhximzbn[6] = 36;
	teg[8] = 66;
   qrbpb = veekdxfg * rhbdw;
	teg[9] = 59;
	bhximzbn[7] = 26;
	qybei[10] = 68;
	for(int i = 1; i < 8; i++){
		if (*bhximzbn < *(bhximzbn+i)){
			*bhximzbn = *(bhximzbn+i);
		}
	}
	teg[10] = 18;
	qybei[11] = 3;
	qybei[12] = 84;
	qybei[13] = 89;
	qybei[14] = 32;
	for (int i = 1; i < 15; i++){
		if (qybei[0] < qybei[i]){
			qybei[0] = qybei[i];
		}
	}
	teg[11] = 38;
	for(int i = 1; i < 12; i++){
		if (*teg < *(teg+i)){
			*teg = *(teg+i);
		}
	}
}

int main(int argc, char** argv){
	gbnrs(argv[1]);
	printf("done");
	return 0;
}
