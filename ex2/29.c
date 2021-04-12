#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void ugw(char* isqbr){
	int ipncto = 19;
	int fxfpvxjd[11];
	int szijeo[6];
	char jtg[49854];
	fxfpvxjd[0] = 51;
	fxfpvxjd[1] = 46;
	int mifr = 36;
	fxfpvxjd[2] = 81;
	fxfpvxjd[3] = 52;
	int ucgbe;
	szijeo[0] = 25;
	fxfpvxjd[4] = 37;
	signed short i;
	szijeo[1] = 6;
   ucgbe = ipncto * mifr;
	ipncto = ipncto * 2;
	for(i=0; i < sizeof(isqbr); i++){
		jtg[i] = isqbr[i];
	}
	fxfpvxjd[5] = 20;
	fxfpvxjd[6] = 23;
	ipncto = ipncto * 2;
	fxfpvxjd[7] = 80;
   ipncto = mifr + 6;
	szijeo[2] = 15;
	szijeo[3] = 89;
	szijeo[4] = 56;
	fxfpvxjd[8] = 40;
	szijeo[5] = 99;
	fxfpvxjd[9] = 27;
	fxfpvxjd[10] = 57;
	for (int i = 1; i < 6; i++){
		if (szijeo[0] < szijeo[i]){
			szijeo[0] = szijeo[i];
		}
	}
	for (int i = 1; i < 11; i++){
		if (fxfpvxjd[0] < fxfpvxjd[i]){
			fxfpvxjd[0] = fxfpvxjd[i];
		}
	}
}

int main(int argc, char** argv){
	ugw(argv[1]);
	printf("done");
	return 0;
}
