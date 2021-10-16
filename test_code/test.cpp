#include<stdio.h>
#include<time.h>

int main(int argc, char** argv){
	int i;
	time_t t;
	struct tm* ptr;
	i = 1 + 2;
	t = time(NULL);
	ptr = localtime(&t);
	printf("Hello World: %d\n", i);
	printf("%s\n", asctime(ptr));
	return(0);
}

	
