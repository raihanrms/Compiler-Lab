%{
	#include<stdio.h>
	#include<stdlib.h>
	int i;
%}
%%
[0-9]*[02468] {printf("Even!");}
[0-9]*[13579] {printf("Odd!");}
%%
int main(){
	yylex();

}
