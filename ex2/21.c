#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void yft(char* rgjyrwu){
	int *ixqe;
	int seqllwv = 15;
	int lned = 33;
	ixqe = (int*)calloc(5, sizeof(int));
	int gogy;
	char xgeladw [255];
	int age = 2;
	for(int i=0; i < sizeof(rgjyrwu); i++){
		xgeladw[i % 255] = rgjyrwu[i];
	}
	ixqe[0] = 59;
	int imkxg = 13;
	int zrvaajxh;
	ixqe[1] = 16;
   gogy = seqllwv / lned;
	int misptzds = 49;
	int ydojb = 32;
	ixqe[2] = 100;
	zrvaajxh = imkxg + age;
	int qgl;
	ixqe[3] = 3;
	qgl = misptzds - ydojb;
   age = imkxg + 6;
	misptzds = misptzds * 2;
   zrvaajxh = age / imkxg;
	ixqe[4] = 41;
   qgl = misptzds * ydojb;
   age = imkxg + 6;
	for(int i = 1; i < 5; i++){
		if (*ixqe < *(ixqe+i)){
			*ixqe = *(ixqe+i);
		}
	}
	qgl = ydojb + misptzds;
	misptzds = misptzds * 2;
	misptzds = misptzds * 2;
   qgl = misptzds * ydojb;
   age = imkxg + 6;
	zrvaajxh = imkxg + age;
}

int main(int argc, char** argv){
	yft(argv[1]);
	printf("done");
	return 0;
}
