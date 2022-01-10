%{
#include<stdio.h>
#include<string.h>
#define max 50
int check,i,j,k,top,b;
char stack[max],ident[max],oper[max],brac[max];
%}

%%
[a-zA-Z0-9] {j++;strcat(ident,yytext);}
[a-zA-Z0-9]+ {check=1;}

"+" {oper[k++]='+';}
"-" {oper[k++]='-';}
"*" {oper[k++]='*';}
"/" {oper[k++]='/';}
"$" {oper[k++]='$';}
"^" {oper[k++]='^';}
"%" {oper[k++]='%';}
"(" {stack[++top]='(';brac[b++]='(';}
")" {if(stack[top]==')' && top!=-1) top--; check=0; brac[b++]=')';}
%%

int main()
{
int i=j=k=b=check=0;
top=-1;

printf("\nEnter a expression: ");
yylex();
printf("\nThe identifiers are: ");

for(i=0;i<j;i++)
printf("\t%c",ident[i]);

printf("\nNumber of identifiers are: %d",j);
printf("\nThe operators are: ");

for(i=0;i<k;i++)
printf("\t%c",oper[i]);

printf("\nNumber of operators are: %d",k);
if(check==0 && top==-1 && j==k+1)
        printf("\nValid Expression");
        else
        printf("\nInvalid Expression");

return 0;
}
