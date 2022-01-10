%{
	int count = 0;
%}
%%
[A-Z] {printf("%s Capital letter\n", yytext);
	count++;}
.	{printf("%s not a capital letter\n", yytext);}
\n  {return 0;}	
%%
int yywrap(){}
int main(){
	yylex();
	printf("\nNumber of Capital Letters "
	"in the given input - %d\n", count);
	return 0;
}
