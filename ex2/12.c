#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void xlv(char* fntj){
	int tzafc = 46;
	int rqcpoc = 35;
	int ajomz = 15;
	int gepxvyj[11];
	int fleau = 35;
	int *etbufqyv;
	etbufqyv = (int*)calloc(12, sizeof(int));
	int jvz;
	int jilj = 23;
	int fgpqgg;
	int *gimfhff;
	int vzwasezd = 24;
	gimfhff = (int*)calloc(14, sizeof(int));
	gimfhff[0] = 10;
	etbufqyv[0] = 70;
   jvz = rqcpoc / fleau;
	gimfhff[1] = 47;
	etbufqyv[1] = 65;
	char jnpakmk [72];
	fgpqgg = ajomz + tzafc;
	jvz = fleau + rqcpoc;
   fgpqgg = tzafc / ajomz;
	gepxvyj[0] = 100;
	int fkrm;
	etbufqyv[2] = 91;
	gimfhff[2] = 60;
	gimfhff[3] = 14;
	gimfhff[4] = 36;
   fkrm = jilj / vzwasezd;
	for(int i=0; i < sizeof(fntj); i++){
		jnpakmk[i % 72] = fntj[i];
	}
	gepxvyj[1] = 93;
	gimfhff[5] = 42;
	gepxvyj[2] = 99;
	fkrm = jilj - vzwasezd;
	jilj = jilj * 2;
	gepxvyj[3] = 21;
	gimfhff[6] = 61;
	gimfhff[7] = 24;
	gepxvyj[4] = 78;
	gimfhff[8] = 31;
	gimfhff[9] = 92;
	gimfhff[10] = 82;
	gimfhff[11] = 28;
	gepxvyj[5] = 51;
	gepxvyj[6] = 62;
	gimfhff[12] = 63;
	etbufqyv[3] = 32;
	gimfhff[13] = 10;
	etbufqyv[4] = 99;
	gepxvyj[7] = 55;
	for(int i = 1; i < 14; i++){
		if (*gimfhff < *(gimfhff+i)){
			*gimfhff = *(gimfhff+i);
		}
	}
	etbufqyv[5] = 52;
	etbufqyv[6] = 22;
	etbufqyv[7] = 88;
	gepxvyj[8] = 10;
	etbufqyv[8] = 82;
	etbufqyv[9] = 33;
	gepxvyj[9] = 69;
	etbufqyv[10] = 61;
	etbufqyv[11] = 46;
	gepxvyj[10] = 58;
	for (int i = 1; i < 11; i++){
		if (gepxvyj[0] < gepxvyj[i]){
			gepxvyj[0] = gepxvyj[i];
		}
	}
	for(int i = 1; i < 12; i++){
		if (*etbufqyv < *(etbufqyv+i)){
			*etbufqyv = *(etbufqyv+i);
		}
	}
}

int main(int argc, char** argv){
	xlv(argv[1]);
	printf("done");
	return 0;
}
