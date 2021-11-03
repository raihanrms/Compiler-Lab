%{
	#include<stdio.h>
	int global_variable;
%}

%%
[0-9]+		{printf("number \n");}
[-+*/^=]+	{printf("operator \n");}
%%

int yywrap(){
	return 1;
}

int main(){
	printf("\n Enter here: \n");
	yylex();
	return 0;
}
