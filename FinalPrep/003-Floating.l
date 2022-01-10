%%
	// example floats 0.1, -0.9, 1e-9, 9e+1, if conditions are met, print message
[+-]?[0-9]+[.][0-9]+|[+-]?[.][0-9]+|[1-9]+e[+-][0-9]+   {printf("Floating value\n");}
%%
int yywrap(){
	return 1;
}
int main(){
	printf("Floating value recognition\n");
	yylex();
	return 0;
}
