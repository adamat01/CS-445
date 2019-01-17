#include <stdio.h>

int main(int argc, char* argv[], char* envp[]){
	int i = 0;

	while(envp[i] != NULL){
		printf("envp[%d] = %s\n",i,envp[i]);
		i++;
	}

	char* path;
	path = getenv("SHELL");
	printf("\nSHELL's value: %s\n",path);
	printf("SHELL's address: %p\n", getenv("SHELL"));
}