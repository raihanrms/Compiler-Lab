%{
#include<stdio.h>
%}

%%
	// + matches 1 or more of the previous
	// * matches 0 or more of the previous
[0-9]+ {printf("Digits! \n");};				// detect and print digits
[a-z A-Z]* {printf("Charachters!\n");};		// detect and print charachters
[*=+%-]* {printf("Operator!\n");};			// detect and print operators
%%

int main(){
	yylex();		// recognize token from input and send to parser
	return 0;
}

int yywrap(){}		// finish taking input
