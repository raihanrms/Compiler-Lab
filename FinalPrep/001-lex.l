%%
%%
int yywrap(){
return 1;
}
main(){
printf("My First FLEX program\n");
yyin = fopen("Welcome.txt","r");
yylex();
}
