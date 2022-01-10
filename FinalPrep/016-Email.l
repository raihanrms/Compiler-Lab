%{
#include<stdio.h>
#include<stdlib.h>
int flag=0;
%}
%%
    // test string: raihan.munim@gmail.com or raihan.munim@linked.in 
[a-z . 0-9]+@[a-z]+".com"|".in" { flag=1; }     // condition met hoile flag e 1 set kora
%%
int main()
{
yylex();
if(flag==1)     // jodi flag e 1 thake
printf("Accepted");     // print hobe accepted
else
printf("Not Accepted"); // nahole not accepted print hobe
}
