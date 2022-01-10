%{
#include<stdio.h>
#include<stdlib.h>
int check,c,j;
%}

%%
[0-9]+ {c=atoi(yytext);}
%%

int main(){
	yylex();
	if(c==2){
		printf("Prime number\n ");
	}
	else if(c==0 || c==1){
		printf("Not prime number\n");
	}
	else{
		for(j=2;j<c;j++){
			if(c%j==0)
			check=1;
		}
		if(check==1)
		printf("Not a prime number\n");
		else if(check==0)
		printf("Prime number\n");
	}
}
