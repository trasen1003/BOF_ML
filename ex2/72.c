#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void kfrkunr(char* aen){
	int wfjngdlm = 53;
	int kabq[12];
	int kers = 40;
	int devrb = 36;
	char yvdmo [242];
	strncpy(yvdmo, aen, sizeof(yvdmo));
	kabq[0] = 20;
	int vfnik[14];
	kabq[1] = 74;
	int ovey = 19;
	int qhyh;
   qhyh = devrb * ovey;
	kabq[2] = 95;
	int ctwxkbq;
   ctwxkbq = wfjngdlm / kers;
	qhyh = ovey + devrb;
	vfnik[0] = 25;
	ctwxkbq = kers + wfjngdlm;
	vfnik[1] = 93;
	vfnik[2] = 47;
	qhyh = ovey + devrb;
	vfnik[3] = 52;
   qhyh = devrb / ovey;
	qhyh = devrb - ovey;
	vfnik[4] = 69;
	kabq[3] = 70;
	kabq[4] = 38;
	vfnik[5] = 7;
	kabq[5] = 84;
	kabq[6] = 66;
	vfnik[6] = 67;
	vfnik[7] = 34;
	vfnik[8] = 52;
	vfnik[9] = 75;
	vfnik[10] = 79;
	vfnik[11] = 41;
	vfnik[12] = 73;
	kabq[7] = 80;
	vfnik[13] = 78;
	for (int i = 1; i < 14; i++){
		if (vfnik[0] < vfnik[i]){
			vfnik[0] = vfnik[i];
		}
	}
	kabq[8] = 41;
	kabq[9] = 67;
	kabq[10] = 6;
	kabq[11] = 84;
	for (int i = 1; i < 12; i++){
		if (kabq[0] < kabq[i]){
			kabq[0] = kabq[i];
		}
	}
}

int main(int argc, char** argv){
	kfrkunr(argv[1]);
	printf("done");
	return 0;
}
