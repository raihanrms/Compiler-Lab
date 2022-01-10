%{
	#include<stdio.h>
%}

%%
	// + mane ager number er moto ak er odhik hote pare
[0-9]+		{printf(" Number... \n");}	// detect number
[-+*/^=]+	{printf(" Operator... \n");}	// detect operators
%%

int yywrap(){		// finish taking input and return 1
	return 1;
}

int main(){
	printf("\n Enter here: \n");	// print message
	yylex();		// recognize token from input and send to parser
	return 0;
}
