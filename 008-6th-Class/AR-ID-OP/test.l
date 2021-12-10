%{
#include<stdio.h>
#include<string.h>
#define max 20
int flag,i,j,k,top,b;
char stack[max],ident[max],oper[max],brac[max];
%}
%%
[a-zA-Z0-9] {j++;strcat(ident,yytext);}
[a-zA-Z0-9]+ {flag=1;}
“+” {oper[k++]=’+';}
“-” {oper[k++]=’-';}
“*” {oper[k++]=’*';}
“/” {oper[k++]=’*';}
“$” {oper[k++]=’$';}
“^” {oper[k++]=’^';}
“%” {oper[k++]=’%';}
“(” { stack[++top]=’(‘;brac[b++]=’(‘;}
“)” { if (stack[top]==’(‘ && top!=-1) top–;flag=0;brac[b++]=’)';}
%%
int main()
{
    int i=j=k=b=flag=0;
    top=-1;
    printf(“\nEnter the Expression : “);
    yylex();
    printf(“\nThe identifiers are : “);
    
    for(i=0;i<j;i++)
        printf(“\t%c”,ident[i]);
        printf(“\nNo.of identifiers are : %d”,j);
        printf(“\nThe operators are :\n”);
    
    for(i=0;i<k;i++)
        printf(“\t%c”,oper[i]);
        printf(“\nNo. of operators are :%d”,k);
    
    if(flag==0 && top==-1 && j==k+1)
        printf(“\nValid expression”);
    else
        printf(“\nInvalid expression”);
    return 0;
}