%{
	int no_of_lines=0;		// set the count of number of lines to 0
	int no_of_char=0;		// set the count of number of characters to 0
%}

%%
\n 		++no_of_lines;		// detects number of new lines
. 		++no_of_char;		// detects number of characters from input string
end		return 0;			// detect end of string  
%%

int yywrap(){}				// done taking input

int main(int argc, char **argv){
	printf("Enter the string \n");		// print a message
	yylex(); 		// recognize token from input and send to parser.
	// print number of lines and char
	printf("Number of lines = %d, number of char = %d\n", no_of_lines, no_of_char );
	return 0;
}
