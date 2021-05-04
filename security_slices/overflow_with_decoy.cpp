//basic overflow in stack 

#include <cstring>
#include <iostream>


void hacked()
{
//goal function we want to reach w/o calling it directly in the C++ code
	std::cout << "hacked" << std::endl;
}

void overflow(char* entry){
	//overflown buffer
	char buf1[2] = {'a','b'};
	char buf[2];
	memcpy(buf,buf1,2);
	int j = 5;
	int u = 8;
	int v = j + u;
	buf[0] = 1;
	//copy that leads to overflow
	for(int i=j;i<22;i++){
		buf[i] = entry[i];
		u = u + 3;
	}
}

int main(){
	//buffer used for the overflow, '\x0d' being the value to remplace the variable i by, the end contains the adress of void hacked()
	char entry[22] = {'a','b','\x0d','\x90','\x90','\x90','\x90','\x90','\x90','\x90','\x90','\x90','\x90','\x90','\x76','\x11','\x40','\00','\00','\00','\00','\00'};
	overflow(entry);
	return 0;
}
