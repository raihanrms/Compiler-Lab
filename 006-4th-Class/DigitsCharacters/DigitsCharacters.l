%{
#include<stdio.h>
%}

%%
[0-9]+ {printf("Digits! \n");};
[a-z A-Z]* {printf("Charachters!\n");};
[*=+%-]* {printf("Operator!\n");};
%%

int main(){
	yylex();
	return 0;
}

int yywrap(){}
