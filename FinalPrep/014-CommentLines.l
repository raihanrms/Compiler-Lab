%{
#include<stdio.h>
%}

%%
[/]{1}[/]{1}[a-zA-Z0-9]* printf("Single Line Comment"); 	// "// er por ja thakbe, oieta single line comment er vitore"
[/]{1}[*]{1}[a-zA-Z0-9]*[*]{1}[/]{1} printf("MultiLine Comment"); // /* ... */ three dot e ja thakbe oieta multiline comment er part
%%

int main(){
	yylex(); 	// recognize token from input and send to parser
}
