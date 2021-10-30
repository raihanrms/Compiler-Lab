%{
#include "y.tab.h" // all the tokens generated, the unique id will be stored here
#include<stdio.h> 
int yylval; // values used between lex and yacc will be pathed through here
%}
%%
 //Rules to return token
"int"[]+ {return KEY;}
"float"[]+ {return KEY;}
"char"[]+ {return KEY;}
"double"[]+ {return KEY;}
"short"[]+ {return KEY;}
"long int"[]+ {return KEY;}
[a-zA-z][a-aA-Z]*[0-9]* {return ID;}
[0-9]+ {return NUM;}
[ \t] ;
[;] {return COLON;}
\n {return 0;}
. {return yytext[0];}
%%
 // if anything mismatches it will be put back to the lexical analyser buffer
int yywrap(){
    return 1;
}