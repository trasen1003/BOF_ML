#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void ypubcsw(char* mtj){
	int puilchwz = 45;
	int agtzm = 72;
	int qkbs = 74;
	int zludop = 14;
	int mdtnqd = 56;
	int jiztb[4];
	int touo = 9;
	int yhlsfa;
   yhlsfa = agtzm * zludop;
	char xwjnwnw [251];
	int xwatw = 1;
	jiztb[0] = 41;
   yhlsfa = agtzm / zludop;
	int wwphimz;
	wwphimz = xwatw + mdtnqd;
	jiztb[1] = 28;
	int pawe = 27;
   yhlsfa = agtzm * zludop;
   yhlsfa = agtzm * zludop;
	jiztb[2] = 63;
	int givx;
	int xlnkeo;
	for(int i=0; i < sizeof(mtj); i++){
		xwjnwnw[i % 251] = mtj[i];
	}
	givx = touo + puilchwz;
   xlnkeo = qkbs / pawe;
	givx = puilchwz - touo;
	yhlsfa = agtzm - zludop;
	qkbs = qkbs * 2;
	xlnkeo = pawe + qkbs;
	xlnkeo = qkbs - pawe;
	mdtnqd = mdtnqd * 2;
	xlnkeo = qkbs - pawe;
	jiztb[3] = 71;
	for (int i = 1; i < 4; i++){
		if (jiztb[0] < jiztb[i]){
			jiztb[0] = jiztb[i];
		}
	}
	mdtnqd = mdtnqd * 2;
   xlnkeo = qkbs / pawe;
   xlnkeo = qkbs * pawe;
}

int main(int argc, char** argv){
	ypubcsw(argv[1]);
	printf("done");
	return 0;
}
