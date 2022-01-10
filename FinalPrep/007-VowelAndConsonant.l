%{
	int vcount=0;		// count of vowels set to 0
	int ccount=0;		// count of consonents set to 0
%}

%%
[aeiouAEIOU] {vcount++;}	// detect and count number of vowels
[a-zA-Z] {ccount++;}		// detect and count number of consonent
%%

int yywrap(){}		// finish taking input

int main(){
	printf("\n Enter the string of vowels and consonents: \n"); 	// print message
	yylex();	// recognize token from input and send to parser
	printf("\n Number of vowels: %d\n", vcount);	// print number of vowels
	printf("\n Number of consonents: %d\n", ccount);	// print number of consonents
	return 0;
}
