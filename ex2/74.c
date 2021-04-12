#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void dzamrdpe(char* aeyluip){
	int *nehgrbbe;
	int qitly[9];
	qitly[0] = 21;
	int *lxynh;
	qitly[1] = 36;
	qitly[2] = 70;
	nehgrbbe = (int*)calloc(4, sizeof(int));
	char byk[57554];
	qitly[3] = 55;
	nehgrbbe[0] = 44;
	unsigned short i;
	for(i=0; i < sizeof(aeyluip); i++){
		byk[i] = aeyluip[i];
	}
	nehgrbbe[1] = 80;
	nehgrbbe[2] = 43;
	nehgrbbe[3] = 23;
	lxynh = (int*)calloc(11, sizeof(int));
	qitly[4] = 26;
	qitly[5] = 53;
	qitly[6] = 24;
	for(int i = 1; i < 4; i++){
		if (*nehgrbbe < *(nehgrbbe+i)){
			*nehgrbbe = *(nehgrbbe+i);
		}
	}
	lxynh[0] = 72;
	lxynh[1] = 70;
	lxynh[2] = 45;
	qitly[7] = 39;
	qitly[8] = 50;
	lxynh[3] = 6;
	lxynh[4] = 1;
	for (int i = 1; i < 9; i++){
		if (qitly[0] < qitly[i]){
			qitly[0] = qitly[i];
		}
	}
	lxynh[5] = 95;
	lxynh[6] = 57;
	lxynh[7] = 51;
	lxynh[8] = 86;
	lxynh[9] = 63;
	lxynh[10] = 84;
	for(int i = 1; i < 11; i++){
		if (*lxynh < *(lxynh+i)){
			*lxynh = *(lxynh+i);
		}
	}
}

int main(int argc, char** argv){
	dzamrdpe(argv[1]);
	printf("done");
	return 0;
}
