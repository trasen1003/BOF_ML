#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void tgybq(char* uhx){
	int rjtyv[11];
	char czxsg [16];
	int xzbfyll = 8;
	int scunj = 32;
	rjtyv[0] = 84;
	for(int i=0; i < sizeof(uhx); i++){
		czxsg[i] = uhx[i];
	}
	rjtyv[1] = 55;
	int ckblupbz[15];
	ckblupbz[0] = 96;
	rjtyv[2] = 76;
	rjtyv[3] = 30;
	int lyxenzyo;
	ckblupbz[1] = 19;
	rjtyv[4] = 54;
	rjtyv[5] = 90;
	rjtyv[6] = 76;
	rjtyv[7] = 48;
	ckblupbz[2] = 46;
	ckblupbz[3] = 60;
	ckblupbz[4] = 66;
	ckblupbz[5] = 88;
	rjtyv[8] = 77;
	rjtyv[9] = 63;
	ckblupbz[6] = 52;
   lyxenzyo = xzbfyll * scunj;
	ckblupbz[7] = 88;
	rjtyv[10] = 66;
	for (int i = 1; i < 11; i++){
		if (rjtyv[0] < rjtyv[i]){
			rjtyv[0] = rjtyv[i];
		}
	}
   lyxenzyo = xzbfyll * scunj;
	ckblupbz[8] = 59;
	ckblupbz[9] = 98;
	ckblupbz[10] = 65;
	lyxenzyo = xzbfyll - scunj;
	ckblupbz[11] = 93;
	xzbfyll = xzbfyll * 2;
	ckblupbz[12] = 82;
	ckblupbz[13] = 55;
   lyxenzyo = xzbfyll / scunj;
	ckblupbz[14] = 78;
   xzbfyll = scunj + 6;
	for (int i = 1; i < 15; i++){
		if (ckblupbz[0] < ckblupbz[i]){
			ckblupbz[0] = ckblupbz[i];
		}
	}
	lyxenzyo = xzbfyll - scunj;
}

int main(int argc, char** argv){
	tgybq(argv[1]);
	printf("done");
	return 0;
}
