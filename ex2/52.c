#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void qer(char* rftwtq){
	int *vwz;
	char atx[70];
	int rggvxnym = 24;
	int naf = 54;
	int slnbsqvz = 13;
	vwz = (int*)calloc(4, sizeof(int));
	int uauwcdcb = 40;
	int gpbzqzyi;
	vwz[0] = 70;
	vwz[1] = 84;
	naf = naf * 2;
	vwz[2] = 28;
	strncpy(atx,rftwtq,69);
	int ygc;
   ygc = rggvxnym * slnbsqvz;
	rggvxnym = rggvxnym * 2;
	ygc = rggvxnym - slnbsqvz;
	atx[69] = ' ';
	printf('%s', atx);
	vwz[3] = 11;
	for(int i = 1; i < 4; i++){
		if (*vwz < *(vwz+i)){
			*vwz = *(vwz+i);
		}
	}
}

int main(int argc, char** argv){
	qer(argv[1]);
	printf("done");
	return 0;
}
