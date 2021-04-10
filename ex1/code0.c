#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void suzu(char* yfez){
	char nfnt [91];
	strncpy(nfnt, yfez, sizeof(nfnt));
	int rti[14];
	rti[0] = 29;
	int fcv[6];
	rti[1] = 51;
	int qgffa[6];
	int vzjrwl = 2;
	rti[2] = 82;
	qgffa[0] = 30;
	int bozog = 45;
	rti[3] = 77;
	rti[4] = 88;
	qgffa[1] = 75;
	int szmmfwbe = 19;
	qgffa[2] = 88;
	fcv[0] = 45;
	qgffa[3] = 44;
	int xdwnza;
	rti[5] = 82;
	qgffa[4] = 4;
	rti[6] = 42;
	xdwnza = bozog - szmmfwbe;
	int lgjpjs = 28;
	rti[7] = 4;
	qgffa[5] = 81;
	int hqez;
	for (int i = 1; i < 6; i++){
		if (qgffa[0] < qgffa[i]){
			qgffa[0] = qgffa[i];
		}
	}
	rti[8] = 39;
   bozog = szmmfwbe + 6;
	rti[9] = 47;
	fcv[1] = 50;
	rti[10] = 15;
	rti[11] = 38;
	rti[12] = 76;
	xdwnza = szmmfwbe + bozog;
	fcv[2] = 41;
	rti[13] = 76;
	fcv[3] = 15;
	fcv[4] = 50;
	fcv[5] = 71;
	for (int i = 1; i < 14; i++){
		if (rti[0] < rti[i]){
			rti[0] = rti[i];
		}
	}
	for (int i = 1; i < 6; i++){
		if (fcv[0] < fcv[i]){
			fcv[0] = fcv[i];
		}
	}
	hqez = lgjpjs + vzjrwl;
   bozog = szmmfwbe + 6;
   xdwnza = bozog / szmmfwbe;
}

int main(int argc, char** argv){
	suzu(argv[1]);
	printf("done");
	return 0;
}
