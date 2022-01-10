
%{
int num;	
%}
%%
[0-9]+ {num=atoi(yytext);
	if(num%5==0){
		printf("Two added: %d",num+2);
	}
	else{
		printf("Two can't be added: %d",num);
	}
};
%%
int yywrap(){
	printf("Enter a number: \n");
	yylex();
	return 0;
}
