#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void vgi(char* sfypiyu){
	int hulfivgs = 8;
	char apjlnxbl[95];
	int *bdglvso;
	int *czxu;
	czxu = (int*)calloc(15, sizeof(int));
	bdglvso = (int*)calloc(11, sizeof(int));
	strncpy(apjlnxbl,sfypiyu,94);
	int jbvfvqk = 35;
	int vnqx;
	czxu[0] = 94;
	apjlnxbl[94] = ' ';
	vnqx = hulfivgs - jbvfvqk;
	printf('%s', apjlnxbl);
	vnqx = hulfivgs - jbvfvqk;
	czxu[1] = 86;
	bdglvso[0] = 28;
	hulfivgs = hulfivgs * 2;
	bdglvso[1] = 35;
	czxu[2] = 87;
	czxu[3] = 37;
	czxu[4] = 1;
	czxu[5] = 99;
	bdglvso[2] = 16;
	czxu[6] = 88;
	czxu[7] = 51;
	czxu[8] = 53;
   vnqx = hulfivgs / jbvfvqk;
	czxu[9] = 32;
	czxu[10] = 46;
   vnqx = hulfivgs * jbvfvqk;
	bdglvso[3] = 48;
	bdglvso[4] = 3;
	czxu[11] = 84;
	czxu[12] = 83;
	bdglvso[5] = 20;
	bdglvso[6] = 62;
	czxu[13] = 34;
	czxu[14] = 65;
	bdglvso[7] = 1;
	bdglvso[8] = 51;
	bdglvso[9] = 33;
	for(int i = 1; i < 15; i++){
		if (*czxu < *(czxu+i)){
			*czxu = *(czxu+i);
		}
	}
	bdglvso[10] = 91;
	for(int i = 1; i < 11; i++){
		if (*bdglvso < *(bdglvso+i)){
			*bdglvso = *(bdglvso+i);
		}
	}
}

int main(int argc, char** argv){
	vgi(argv[1]);
	printf("done");
	return 0;
}
