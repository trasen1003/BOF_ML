#!/bin/python3


#V1 : strcpy
#S1 : strncpy
#V2 : dest[i] = str[i]
#S2 : dest[i%x] = str[i]
#V3 : signed short i
#S3 : unsigned short i
#V4 : strncpy
#S4 : dest[der] = '\0'
from random import randint
import string

def genName():
	length = randint(3,8)
	str = ''
	for i in range(length):
		letter = randint(0,25)
		str += string.ascii_lowercase[letter]
	return str



def genFlow():
	flow = randint(1,3)
	strl = []

	if(flow == 1): #operation entre ints
		intName1 = genName()
		intName2 = genName()
		temp = genName()
		strl.append("	int %s = %s;"%(intName1, randint(1,80)))
		strl.append("	int %s = %s;"%(intName2, randint(1,40)))
		strl.append("	int %s;" % temp)
		for i in range(randint(1,7)):
			comm = randint(1,6)
			if(comm == 1):
				strl.append("	%s = %s * 2;" % (intName1, intName1))
			if(comm == 2):
				strl.append("	%s = %s + %s;" % (temp, intName2, intName1))
			if(comm == 3):
				strl.append("	%s = %s - %s;" % (temp, intName1, intName2))
			if(comm == 4):
                                strl.append("   %s = %s * %s;" % (temp, intName1, intName2))
			if(comm == 5):
                                strl.append("   %s = %s / %s;" % (temp, intName1, intName2))
			if(comm == 6):
                                strl.append("   %s = %s + 6;" % (intName1, intName2))

	if(flow == 2): #find largest element in array alg
		arrName = genName()
		size = randint(3,15)
		strl.append("	int %s[%s];" % (arrName, size))
		for i in range(size):
			strl.append("	%s[%s] = %s;" % (arrName, i, randint(1,100)))
		strl.append("""	for (int i = 1; i < %s; i++){
		if (%s[0] < %s[i]){
			%s[0] = %s[i];
		}
	}""" % (size, arrName, arrName, arrName, arrName))

	if(flow == 3): #same avec la heap
		pointerName = genName()
		size = randint(3,15)
		strl.append("	int *%s;" % pointerName)
		strl.append("	%s = (int*)calloc(%s, sizeof(int));" % (pointerName, size))
		for i in range(size):
			strl.append("	%s[%s] = %s;" % (pointerName, i, randint(1,100)))
		strl.append("""	for(int i = 1; i < %s; i++){
		if (*%s < *(%s+i)){
			*%s = *(%s+i);
		}
	}"""%(size, pointerName, pointerName, pointerName, pointerName))

	return strl


def mixCode(codel):
	str = ''
	while(len(codel) > 0):
		i = randint(0, len(codel) - 1)
		str += codel[i].pop(0) + "\n"
		if(len(codel[i]) == 0):
			codel.pop(i)
	return str

def genCode(vuln = 0):
    scenario = randint(1,4)
    inputName = genName()
    funcName = genName()

    mainString = """}

int main(int argc, char** argv){
    %s(argv[1]);
    printf("done");
    return 0;
}
""" % funcName

    funcString = """#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void %s(char* %s){
""" % (funcName, inputName)
    keyString = ""

    if(vuln == 0):
        if(scenario == 1):
            destName = genName()
            keyString = ["	char %s [%s];"%(destName,randint(16,256)),"	strncpy(%s, %s, sizeof(%s));" % (destName, inputName, destName)]
        if(scenario == 2):
            destName = genName()
            destLen = randint(16,256)
            keyString = ["	char %s [%s];"%(destName,destLen),"""	for(int i=0; i < sizeof(%s); i++){
        %s[i %s %s] = %s[i];
    }""" % (inputName, destName, "%", destLen, inputName)]
        if(scenario == 3):
            destName = genName()
            keyString=["	char %s[%s];"%(destName, randint(33000,65000)),"	unsigned short i;","""	for(i=0; i < sizeof(%s); i++){
                    %s[i] = %s[i];
    }""" % (inputName, destName, inputName)]
        if(scenario == 4):
            destName = genName()
            destLength = randint(16,256)
            keyString = ["	char %s[%s];"%(destName, destLength), "	strncpy(%s,%s,%s);"%(destName, inputName, destLength-1),"	%s[%s] = '\0';"%(destName, destLength-1),"	printf('%s', %s);" % ("%s", destName)]
    else:
        if(scenario == 1):
            destName = genName()
            keyString = ["	char %s [%s];" % (destName, randint(16,256)), "	strcpy(%s, %s);" % (destName, inputName)]
        if(scenario == 2):
            destName = genName()
            destLen = randint(16,256)
            keyString = ["	char %s [%s];"%(destName, destLen), """	for(int i=0; i < sizeof(%s); i++){
        %s[i] = %s[i];
    }""" % (inputName, destName, inputName)]
        if(scenario == 3):
            destName = genName()
            keyString=["	char %s[%s];"%(destName, randint(33000, 65000)), "	signed short i;", """	for(i=0; i < sizeof(%s); i++){
                    %s[i] = %s[i];
    }""" % (inputName, destName, inputName)]
        if(scenario == 4):
            destName = genName()
            destLength = randint(16,256)
            keyString = ["	char %s[%s];"%(destName, destLength), "	strncpy(%s,%s,%s);"%(destName, inputName, destLength), "	printf('%s', %s);" % ("%s", destName)]


    str = funcString
    flows = [keyString]
    nb_flows = randint(3,10)
    for i in range(nb_flows):
        flows.append(genFlow())
    str += mixCode(flows)
    str += mainString
    return str

