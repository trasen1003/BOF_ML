#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void tfwnnk(char* iodj){
	int *tjz;
	char snnji [172];
	int *lixilf;
	lixilf = (int*)calloc(15, sizeof(int));
	strcpy(snnji, iodj);
	lixilf[0] = 28;
	int hrjnkj = 40;
	tjz = (int*)calloc(12, sizeof(int));
	tjz[0] = 8;
	int xxdh = 21;
	tjz[1] = 6;
	int lebidy;
	lebidy = xxdh + hrjnkj;
	lixilf[1] = 53;
	hrjnkj = hrjnkj * 2;
	lixilf[2] = 61;
	tjz[2] = 21;
	lixilf[3] = 30;
	tjz[3] = 34;
	tjz[4] = 97;
	tjz[5] = 65;
	tjz[6] = 55;
	lixilf[4] = 26;
	tjz[7] = 63;
	lixilf[5] = 84;
	lixilf[6] = 74;
	tjz[8] = 66;
	hrjnkj = hrjnkj * 2;
	tjz[9] = 29;
	tjz[10] = 93;
	lixilf[7] = 48;
   lebidy = hrjnkj * xxdh;
	lixilf[8] = 40;
	lixilf[9] = 97;
	lixilf[10] = 22;
	lixilf[11] = 50;
	tjz[11] = 85;
	lebidy = xxdh + hrjnkj;
	lixilf[12] = 22;
	lixilf[13] = 22;
	lixilf[14] = 39;
	for(int i = 1; i < 15; i++){
		if (*lixilf < *(lixilf+i)){
			*lixilf = *(lixilf+i);
		}
	}
	hrjnkj = hrjnkj * 2;
	for(int i = 1; i < 12; i++){
		if (*tjz < *(tjz+i)){
			*tjz = *(tjz+i);
		}
	}
   hrjnkj = xxdh + 6;
}

int main(int argc, char** argv){
	tfwnnk(argv[1]);
	printf("done");
	return 0;
}
