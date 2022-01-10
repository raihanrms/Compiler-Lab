%{
#include<stdio.h>
%}

%%
[\t ]+
is |
am |
are | 
were | 
was | 
be | 
being | 
doing {printf("%s is a verb.\n", yytext);} 	// input e agula detect korle verb print hobe

I | 
you | 
he | 
she | 
we | 
they {printf("%s is a pronoun.\n", yytext);} // input e agula detect korle pronoun print hobe

very |
simply |
gently |
quitely |
calmly |
angrily {printf("%s is an adverb.\n", yytext);}	// input e agula detect korle adverb print hobe

a |
an |
the {printf("%s is an article.\n", yytext);}	// input e agula detect korle article print hobe
\&.|\n {ECHO;}

%%
int main(){
	yylex();	// recognize token from input and send to parser
}
