%{
	#include<stdio.h>
%}
%%
"RAIHAN"|"Raihan"|"raihan" {printf("Accepted");}
[a-zA-z]+ {printf("Not Accepted");}
%%
int main(){
	printf("Sample Program\n");
	yylex();
}
