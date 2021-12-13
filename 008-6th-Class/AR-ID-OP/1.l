%{
#include<stdio.h>
#include<string.h>
int noprt=0, nopnd=0,valid=1,top=-1,l=0,j=0;
char opnd[10][10],oprt[10][10],a[100];
%}

%%
"(" {top++;a[top]='(';}
"{" {top++;a[top]='{';}
"[" {top++;a[top]='[';}
")" {if (a[top]!='(') { valid=0; return;}
         else
            top--;
    }
"}" {if (a[top]!='{')
      { valid=0; return;}
         else
            top--;
    }
"]" {if (a[top]!='[')
      { valid=0; return;}
         else
            top--;
    }
"+"|"-"|"*"|"/" {noprt++;
                  strcpy(oprt[l],yytext);
                   l++;}
[0-9]+|[a-zA-Z][a-zA-Z0-9_]* {nopnd++;
                               strcpy(opnd[j],yytext);
                                 j++;}
%%

main()
{
int k;
printf("Enter the arithmetic expression: ");
yylex();

if(valid==1 && top==-1 && (nopnd-noprt)==1)
{
  printf("\nvalid\n");

printf("the operators are\n");
for(k=0;k<l;k++)
  printf("%s \n",oprt[k]);

  printf("the operands are\n");
for(k=0;k<j;k++)
  printf("%s \n",opnd[k]);
}
else
printf("the expression is invalid\n");
}

int yywrap()
{
 return 1;
}
