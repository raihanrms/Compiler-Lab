%%
%%
int yywrap(){
return 1;
}
main(){
printf("My First FLEX program\n");  // print a line
yyin = fopen("Welcome.txt","r");    // take lines from file as input and print it
yylex();
}
