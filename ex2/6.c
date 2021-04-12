#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void thusp(char* kmgjlitd){
	char ebkgivq [187];
	int *cgddo;
	for(int i=0; i < sizeof(kmgjlitd); i++){
		ebkgivq[i] = kmgjlitd[i];
	}
	int futu = 25;
	int lrbtlm = 36;
	cgddo = (int*)calloc(10, sizeof(int));
	int ayf = 9;
	int aqinise = 26;
	int ufdwxqhd;
	int qysfe = 29;
	int wdfqwdv = 7;
	cgddo[0] = 85;
	int xqr;
   lrbtlm = wdfqwdv + 6;
	ufdwxqhd = aqinise + ayf;
   xqr = lrbtlm / wdfqwdv;
   ufdwxqhd = ayf / aqinise;
	xqr = lrbtlm - wdfqwdv;
	cgddo[1] = 61;
   xqr = lrbtlm * wdfqwdv;
	ufdwxqhd = ayf - aqinise;
	ufdwxqhd = ayf - aqinise;
	cgddo[2] = 87;
	cgddo[3] = 19;
   ufdwxqhd = ayf / aqinise;
	ayf = ayf * 2;
	cgddo[4] = 58;
	cgddo[5] = 66;
	int gkh;
	gkh = qysfe + futu;
   gkh = futu * qysfe;
   gkh = futu * qysfe;
	gkh = futu - qysfe;
	cgddo[6] = 78;
	gkh = qysfe + futu;
	cgddo[7] = 37;
	cgddo[8] = 14;
	cgddo[9] = 37;
	for(int i = 1; i < 10; i++){
		if (*cgddo < *(cgddo+i)){
			*cgddo = *(cgddo+i);
		}
	}
}

int main(int argc, char** argv){
	thusp(argv[1]);
	printf("done");
	return 0;
}
