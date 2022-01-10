%{
#include<stdio.h>
%}

%%
[/]{1}[/]{1}[a-zA-Z0-9]* printf("Single Line Comment");
[/]{1}[*]{1}[a-zA-Z0-9]*[*]{1}[/]{1} printf("MultiLine Comment");
%%

int main(){
	yylex();
}
