%{
#include<stdio.h>
#include<stdlib.h>
int check,c,j;
%}

%%
[0-9]+ {c=atoi(yytext);}	// c er vitore jekono integer number thakbe
%%

int main(){
	yylex();
	if(c==2){
		printf("Prime number\n ");	// jodi c 2 hoy tahole prime
	}
	else if(c==0 || c==1){		// jodi 0 ba 1 hoy tahole not prime
		printf("Not prime number\n");
	}
	else{
		for(j=2;j<c;j++){		// akta loop e check kortesi je 
			if(c%j==0)			// input er vaag shesh 0 hoy
			check=1;			// tahole check er maan 1
		}
		if(check==1)			// jodi check er maan 1 hoy tahole
		printf("Not a prime number\n");		// print hobe not a prime
		else if(check==0)		// jodi check er maan 0 hoy tahole 
		printf("Prime number\n");			// print hobe prime number
	}
}
