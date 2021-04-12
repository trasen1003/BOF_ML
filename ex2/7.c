#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void gwfuzbe(char* yrd){
	int eres[13];
	int gxotv[13];
	int ycllgf = 18;
	int iqutj[4];
	iqutj[0] = 1;
	gxotv[0] = 37;
	int *ovf;
	char kjxkl[16];
	int lwhegv = 54;
	gxotv[1] = 77;
	int laeqnq = 17;
	ovf = (int*)calloc(12, sizeof(int));
	int sneviunf;
	strncpy(kjxkl,yrd,16);
	int oymwwgw = 72;
	gxotv[2] = 88;
	int hodckq = 2;
	ovf[0] = 98;
	eres[0] = 23;
	eres[1] = 35;
	int auq;
	gxotv[3] = 28;
	printf('%s', kjxkl);
	int iufd = 12;
   ycllgf = hodckq + 6;
   sneviunf = lwhegv / laeqnq;
	int xfdhz;
	auq = ycllgf - hodckq;
	ovf[1] = 23;
	xfdhz = oymwwgw - iufd;
	xfdhz = iufd + oymwwgw;
	iqutj[1] = 53;
	eres[2] = 62;
	auq = ycllgf - hodckq;
	gxotv[4] = 64;
	iqutj[2] = 35;
	ovf[2] = 14;
	eres[3] = 89;
	eres[4] = 11;
	ovf[3] = 36;
	eres[5] = 12;
	eres[6] = 95;
	ovf[4] = 14;
	ovf[5] = 64;
	gxotv[5] = 17;
	eres[7] = 43;
	iqutj[3] = 96;
	for (int i = 1; i < 4; i++){
		if (iqutj[0] < iqutj[i]){
			iqutj[0] = iqutj[i];
		}
	}
	gxotv[6] = 48;
	eres[8] = 90;
	ovf[6] = 21;
	ovf[7] = 38;
	gxotv[7] = 40;
	gxotv[8] = 47;
	ovf[8] = 24;
	ovf[9] = 66;
	ovf[10] = 30;
	ovf[11] = 48;
	for(int i = 1; i < 12; i++){
		if (*ovf < *(ovf+i)){
			*ovf = *(ovf+i);
		}
	}
	eres[9] = 76;
	gxotv[9] = 76;
	gxotv[10] = 58;
	gxotv[11] = 50;
	eres[10] = 15;
	gxotv[12] = 90;
	for (int i = 1; i < 13; i++){
		if (gxotv[0] < gxotv[i]){
			gxotv[0] = gxotv[i];
		}
	}
	eres[11] = 94;
	eres[12] = 14;
	for (int i = 1; i < 13; i++){
		if (eres[0] < eres[i]){
			eres[0] = eres[i];
		}
	}
}

int main(int argc, char** argv){
	gwfuzbe(argv[1]);
	printf("done");
	return 0;
}
