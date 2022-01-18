%{
    int num_lines=0;
    int num_char=0;
%}

%%
\n ++num_lines;
.  ++num_char;
end return 0;
%%

int yywrap(){}

int main(int argc, char **argv){
    printf("Enter the string: \n");
    yylex();
    printf("Number of lines: %d, Number of character: %d \n", num_lines, num_char );
    return 0;
}