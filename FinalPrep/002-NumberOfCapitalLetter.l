%{
	int count = 0;	// set number of input to 0
%}
%%
[A-Z] {printf("%s Capital letter\n", yytext);	// if capital A to Z, print Capital
	count++;}	// count on the number of input
.	{printf("%s not a capital letter\n", yytext);}
\n  {return 0;}	
%%
int yywrap(){}		// finish taking input
int main(){
	yylex();		//  recognizes tokens from the input stream and returns them to the parser
	printf("\nNumber of Capital Letters " 
	"in the given input - %d\n", count); 	// print the number of capital letters
	return 0;
}
