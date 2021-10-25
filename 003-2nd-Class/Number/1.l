%%
[+]?[0-9]+ {printf("Positive integer\n");}
[-]?[0-9]+ {printf("Negative integer\n");}
%%
int yywrap(){
	return 1;
}
int main(){
	printf("Positive and negative integer recognition\n");
	yylex();
	return 0;
}
