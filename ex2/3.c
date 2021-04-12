#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void lbtw(char* pkbivrff){
	char kujfog [79];
	int eogtw = 17;
	int ojcw = 7;
	int vpkp;
	strcpy(kujfog, pkbivrff);
	int qmcyqwag = 76;
	vpkp = ojcw + eogtw;
	int ftplw = 27;
	int xrfv[5];
	int lswpkj;
	lswpkj = qmcyqwag - ftplw;
   lswpkj = qmcyqwag / ftplw;
   lswpkj = qmcyqwag * ftplw;
	lswpkj = ftplw + qmcyqwag;
	xrfv[0] = 66;
	xrfv[1] = 58;
   lswpkj = qmcyqwag / ftplw;
	xrfv[2] = 71;
	lswpkj = qmcyqwag - ftplw;
	xrfv[3] = 28;
	xrfv[4] = 28;
	for (int i = 1; i < 5; i++){
		if (xrfv[0] < xrfv[i]){
			xrfv[0] = xrfv[i];
		}
	}
}

int main(int argc, char** argv){
	lbtw(argv[1]);
	printf("done");
	return 0;
}
