%%
%%
int yywrap(){   // finishes taking input
return 1;
}
main(){
printf("My First FLEX program\n");  // print a line
yyin = fopen("Welcome.txt","r");    // take lines from file as input and print it
yylex();    //  recognizes tokens from the input stream and returns them to the parser
}
