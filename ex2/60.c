#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void gsplsf(char* cmy){
	int pqkclvnp[5];
	int zsh[15];
	char gatwxlpg [149];
	int ehzpo[4];
	int *rjzecehy;
	strncpy(gatwxlpg, cmy, sizeof(gatwxlpg));
	zsh[0] = 67;
	rjzecehy = (int*)calloc(7, sizeof(int));
	int jagu = 51;
	zsh[1] = 38;
	zsh[2] = 93;
	int jezxrw = 36;
	rjzecehy[0] = 44;
	pqkclvnp[0] = 88;
	zsh[3] = 78;
	int uuluxc;
	int qxqwujvc[3];
	pqkclvnp[1] = 68;
	ehzpo[0] = 100;
	zsh[4] = 99;
	qxqwujvc[0] = 80;
	uuluxc = jagu - jezxrw;
	ehzpo[1] = 31;
	ehzpo[2] = 84;
	pqkclvnp[2] = 80;
	zsh[5] = 65;
	pqkclvnp[3] = 90;
	rjzecehy[1] = 38;
	zsh[6] = 49;
	pqkclvnp[4] = 65;
	ehzpo[3] = 37;
	qxqwujvc[1] = 29;
	qxqwujvc[2] = 36;
	for (int i = 1; i < 5; i++){
		if (pqkclvnp[0] < pqkclvnp[i]){
			pqkclvnp[0] = pqkclvnp[i];
		}
	}
	for (int i = 1; i < 3; i++){
		if (qxqwujvc[0] < qxqwujvc[i]){
			qxqwujvc[0] = qxqwujvc[i];
		}
	}
	for (int i = 1; i < 4; i++){
		if (ehzpo[0] < ehzpo[i]){
			ehzpo[0] = ehzpo[i];
		}
	}
	zsh[7] = 34;
	rjzecehy[2] = 79;
	zsh[8] = 80;
	zsh[9] = 16;
	zsh[10] = 66;
	rjzecehy[3] = 4;
	zsh[11] = 9;
	zsh[12] = 60;
	zsh[13] = 27;
	zsh[14] = 16;
	for (int i = 1; i < 15; i++){
		if (zsh[0] < zsh[i]){
			zsh[0] = zsh[i];
		}
	}
	rjzecehy[4] = 50;
	rjzecehy[5] = 95;
	rjzecehy[6] = 32;
	for(int i = 1; i < 7; i++){
		if (*rjzecehy < *(rjzecehy+i)){
			*rjzecehy = *(rjzecehy+i);
		}
	}
}

int main(int argc, char** argv){
	gsplsf(argv[1]);
	printf("done");
	return 0;
}
