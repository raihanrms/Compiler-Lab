%{
	#include<stdio.h>
%}
%token LETTER DIGIT
%%
s:LETTER e
e:LETTER e
|DIGIT e
|
%%
int main(){
	printf("Program to recognize valid\n");
	if(!yyparse()){
		printf("Valid\n");
	}
}
int yyerror(){
	printf("Invalid\n");
}
