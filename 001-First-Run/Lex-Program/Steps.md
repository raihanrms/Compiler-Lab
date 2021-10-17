-- run the lex script
lex sample.l

-- link the lex output with ll
cc lex.yy.c -ll

-- execute the program
./a.out

-- add user input
-- Valid
RAIHAN
Raihan
raihan

-- Invalid
RaiHan
raihaN
