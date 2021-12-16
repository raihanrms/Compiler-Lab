%%
 ((0[1-9])|([1-2][0-9])|(3[0-1]))\/([0-9]{4}) {printf("\nDate Format Valid\n");}
.+ {printf("\nDate Format Invalid\n");}
%%

int main(){
	printf("\nEnter Date as MM/DD/YYYY: ");
	yylex();
	printf("\n");
}
