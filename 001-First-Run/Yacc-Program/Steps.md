-- run the lex.l script
lex lex.l

-- run yacc.y script
yacc -d yacc.y

-- link both the outputs with ll
cc y.tab.c lex.yy.c -ll

-- execute with program
./a.out

-- user input
Raihan123 <- valid
123Raihan <- invalid
