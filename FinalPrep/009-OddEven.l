%{
	#include<stdio.h>
	#include<stdlib.h>
%}
%%
[0-9]*[02468] {printf("Even!");} 	// number er shesh e 0,2,4,6,8 thakle Even print hobe
[0-9]*[13579] {printf("Odd!");}		// number er shesh e 1,3,5,7,9 thakle Odd print hobe
%%
int main(){
	yylex(); 	// recognize token from input and send to parser

}
