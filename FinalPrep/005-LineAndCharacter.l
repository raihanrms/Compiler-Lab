%{
	int no_of_lines=0;
	int no_of_char=0;
%}

%%
\n 		++no_of_lines;
. 		++no_of_char;
end		return 0;
%%

int yywrap(){}

int main(int argc, char **argv){
	printf("Enter the string \n");
	yylex();
	printf("Number of lines = %d, number of char = %d\n", no_of_lines, no_of_char );
	return 0;
}
