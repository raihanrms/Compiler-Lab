/* Yacc input */
%{
void yyerror (char *s); /* called when faced some sytax error */ 
#include <stdio.h> /* standard lib */ 
#include <stdlib.h>
int symbols[52]; /* primitive symbol table with 52 diff variables a-z-A-Z */ 
int symbolVal(char symbol); /* function to look up the value of the variable in the symbol table */ 
void updateSymbolVal(char symbol, int val);	/* symbol/value gets the passing value and update it */ 
%}

/* Yacc definitions */
%union {int num; char id;} /* specify different types the lexical analyser can return */ 
%start line /* indicates the starting rule/production */ 
%token print /* prints the token from lexical analyser */ 
%token exit_command /* generates header file that passes so the analyser can reference */ 
%token <num> number /* token will be saved in the member num in the union type */ 
%token <id> identifier /* returned by the lexical analyser in the member variable id in the union */ 
%type <num> line exp term 
%type <id> assignment
%% 

/* descriptions of expected inputs     corresponding actions (in C) */

line    : assignment ';'		{;}
		| exit_command ';'		{exit(EXIT_SUCCESS);}
		| print exp ';'			{printf("Printing %d\n", $2);}
		| line assignment ';'	{;}
		| line print exp ';'	{printf("Printing %d\n", $3);}
		| line exit_command ';'	{exit(EXIT_SUCCESS);}
        ;

assignment : identifier '=' exp  { updateSymbolVal($1,$3); }
			;
exp    	: term                  {$$ = $1;}
       	| exp '+' term          {$$ = $1 + $3;}
       	| exp '-' term          {$$ = $1 - $3;}
       	;
term   	: number                {$$ = $1;}
		| identifier			{$$ = symbolVal($1);} 
        ;

%%                     /* C code */

int computeSymbolIndex(char token)
{
	int idx = -1;
	if(islower(token)) {
		idx = token - 'a' + 26;
	} else if(isupper(token)) {
		idx = token - 'A';
	}
	return idx;
} 

/* returns the value of a given symbol */
int symbolVal(char symbol)
{
	int bucket = computeSymbolIndex(symbol);
	return symbols[bucket];
}

/* updates the value of a given symbol */
void updateSymbolVal(char symbol, int val)
{
	int bucket = computeSymbolIndex(symbol);
	symbols[bucket] = val;
}

int main (void) {
	/* init symbol table */
	int i;
	for(i=0; i<52; i++) {
		symbols[i] = 0;
	}

	return yyparse ( );
}

void yyerror (char *s) {fprintf (stderr, "%s\n", s);}
