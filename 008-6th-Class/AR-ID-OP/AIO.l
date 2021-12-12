%{
#include<stdio.h>
#include<string.h>
#define max 20
int check,i,j,k,top,b;
char stack[max],identifier[max],operator[max],bracket[max];	
%}

%%
[a-zA-Z0-9] {j++;strcat(identifier,yytext);}
[a-zA-Z0-9]+ {check=1;}
"+" {operator[k++]='+';}
"-" {operator[k++]='-';}
"*" {operator[k++]='*';}
"/" {operator[k++]='/';}
"$" {operator[k++]='$';}
"^" {operator[k++]='^';}
"%" {operator[k++]='%';}
"(" {stack[++top]=='(';}bracket[b++]='(';}
")" {if(stack[top]=')';}(&&top!=-1)top--;check=0;bracket[b++]=')';}
%%

int main()
{
int i=j=k=b=check=0;
top=-1;

printf("\nEnter a expression: ");
yylex();
printf("\nThe identifiers are: ");

for(i=0;i<j;i++)
printf("\t%c",identifiers[i]);

printf("\nNumber of identifiers are: %d",j);
printf("\nThe operators are: ");

for(i=0;i<k;i++)
printf("\t%c",operators[i]);

printf("\nNumber of operators are: %d",k);	
if(flag==0 && top==-1 && j==k+1){
	printf("\nValid Expression");}
	else{
	printf("\nInvalid Expression");}

return 0;
}
