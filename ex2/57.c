#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void njlu(char* ytyecm){
	int bvgyleht = 11;
	int *qvjzuli;
	qvjzuli = (int*)calloc(10, sizeof(int));
	int *xrjghup;
	xrjghup = (int*)calloc(8, sizeof(int));
	qvjzuli[0] = 23;
	xrjghup[0] = 96;
	int tcroakju = 70;
	qvjzuli[1] = 60;
	xrjghup[1] = 54;
	char jtmpwb[136];
	int oyijn = 2;
	int smjpj = 11;
	xrjghup[2] = 18;
	int lwcy = 26;
	int chjgm;
	xrjghup[3] = 77;
	strncpy(jtmpwb,ytyecm,135);
	jtmpwb[135] = ' ';
	chjgm = smjpj + oyijn;
	printf('%s', jtmpwb);
	qvjzuli[2] = 30;
	int agz = 3;
	int gzclt;
	qvjzuli[3] = 41;
	gzclt = agz + bvgyleht;
   gzclt = bvgyleht * agz;
	int atpmi;
	xrjghup[4] = 12;
   oyijn = smjpj + 6;
	qvjzuli[4] = 54;
	tcroakju = tcroakju * 2;
	qvjzuli[5] = 54;
	bvgyleht = bvgyleht * 2;
   gzclt = bvgyleht / agz;
	xrjghup[5] = 16;
	xrjghup[6] = 43;
   oyijn = smjpj + 6;
   chjgm = oyijn / smjpj;
   gzclt = bvgyleht * agz;
	xrjghup[7] = 22;
	atpmi = tcroakju - lwcy;
	qvjzuli[6] = 6;
	gzclt = agz + bvgyleht;
	for(int i = 1; i < 8; i++){
		if (*xrjghup < *(xrjghup+i)){
			*xrjghup = *(xrjghup+i);
		}
	}
	gzclt = bvgyleht - agz;
   atpmi = tcroakju / lwcy;
	qvjzuli[7] = 52;
	qvjzuli[8] = 1;
	qvjzuli[9] = 91;
	atpmi = tcroakju - lwcy;
	for(int i = 1; i < 10; i++){
		if (*qvjzuli < *(qvjzuli+i)){
			*qvjzuli = *(qvjzuli+i);
		}
	}
   atpmi = tcroakju * lwcy;
}

int main(int argc, char** argv){
	njlu(argv[1]);
	printf("done");
	return 0;
}
