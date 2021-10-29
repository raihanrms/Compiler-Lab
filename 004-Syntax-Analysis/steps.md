## Steps

Compile 
- _yacc -d calc.y_
- _lex calc.l_
- _gcc lex.yy.c y.tab.c -o calc_
- _./calc_

Calculation example (arithmatics exprs)
- _a = 1 + 100;_
- _print a;_
- _B = a - 10;_
- _print B;_
- _print a + b;_
- _exit_
