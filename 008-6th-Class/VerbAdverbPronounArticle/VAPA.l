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
doing {printf("%s is a verb.\n", yytext);}

I | 
you | 
he | 
she | 
we | 
they {printf("%s is a pronoun.\n", yytext);}

very |
simply |
gently |
quitely |
calmly |
angrily {printf("%s is an adverb.\n", yytext);}

a |
an |
the {printf("%s is an article.\n", yytext);}
\&.|\n {ECHO;}

%%
int main(){
	yylex();
}
