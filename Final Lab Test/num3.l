%{
#include<stdio.h>
int rem=0,op_count=0,id_count=0,flag=0;
%}
%%
[a-zA-Z]+[0-9A-Za-z]* {id_count++;} {printf("\n %s :: is an identifier\n",yytext);}
[0-9_]+ {id_count++;} {printf("\n %s :: is an identifier\n",yytext);}
[\+\-\*/\=] {op_count++;} {printf("%s :: is an operator\n", yytext);}
"(" {rem++;}
")" {rem--;}
"{" {rem++;}
"}" {rem--;}
"[" {rem++;}
"]" {rem--;}
.|\n {return 0;}
%%
int yywrap() 
{ 
    return 1; 
}

int main()
{ 
        printf("Enter :: ");
        yylex();
        if((op_count+1)==id_count && rem==0 )
        {
                printf("\n Expression is Valid!\n");

                printf("No of identifier :: %d \n No of Operators :: %d \n",id_count,op_count);
        }
        else
                printf("\n Expression is Not Valid !! \n");
return 0;

}