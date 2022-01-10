%%
	// + means it Matches 1 or more of the previous
[+]?[0-9]+ {printf("Positive integer\n");}	// detect and print 
[-]?[0-9]+ {printf("Negative integer\n");}
%%
int yywrap(){ 	// finish taking input
	return 1;
}
int main(){
	printf("Positive and negative integer recognition\n");
	yylex(); 	//  recognizes tokens from the input stream and returns them to the parser
	return 0;
}
