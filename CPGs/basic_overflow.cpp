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
	char buf[2];
	//copy that leads to overflow
	for(int i=0;i<22;i++){
		buf[i] = entry[i];
	}
}

int main(){
	//buffer used for the overflow, '\x0d' being the value to remplace the variable i by, the end contains the adress of void hacked()
	char entry[22] = {'a','b','\x0d','\x90','\x90','\x90','\x90','\x90','\x90','\x90','\x90','\x90','\x90','\x90','\x76','\x11','\x40','\00','\00','\00','\00','\00'};
	overflow(entry);
	return 0;
}
