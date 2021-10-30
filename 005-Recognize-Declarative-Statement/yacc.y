%{
    #include<stdio.h>
    int flag=0;    
%}
%token ID KEY COLON COMMA NUM
%%
 /* Rule */
stmt: list {printf("\n Declaration is Validated!");} /* Declarative statement produces a list and prints message */
;
list    : KEY list
        | list ',' list
        | list ','',' {printf("Syntax error: consequitive commas used: invalid"); exit(0);}
