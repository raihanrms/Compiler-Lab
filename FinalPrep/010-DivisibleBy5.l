
%{
int num;	
%}
%%
	// Condition: amra je integer number ta input nici
	// (atoi mane int number dhora)
[0-9]+ {num=atoi(yytext);
	if(num%5==0){		// 5 diye vaag jai tahole +2 add hobe
		printf("Two added: %d",num+2);		// print hobe 2 added 
	}
	else{
		printf("Two can't be added: %d",num);	// nahole print hobe 2 can't be added
	}
};
%%
int yywrap(){	// finish taking input
	printf("Enter a number: \n");	// print a message
	yylex();	// recognize token from input and send to parser
	return 0;
}
