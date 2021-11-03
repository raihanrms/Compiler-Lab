%{
	int vcount=0;
	int ccount=0;
%}

%%
[aeiouAEIOU] {vcount++;}
[a-zA-Z] {ccount++;}
%%

int yywrap(){}

int main(){
	printf("\n Enter the string of vowels and consonents: \n");
	yylex();
	printf("\n Number of vowels: %d\n", vcount);
	printf("\n Number of consonents: %d\n", ccount);
	return 0;
}
