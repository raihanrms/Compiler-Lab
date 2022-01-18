%{
    #include<stdio.h>
%}
%%
if | 
else | 
elseif | 
do | 
while | 
int {printf("%s is a keyword.\n", yytext);}
[a-z]([a-z][0-9])* {printf("%s is an identifier.\n", yytext);}
%%
int main(){
    printf("Enter your word: ");
    yylex();
    return 0;
}
int yywrap(){}