## Steps
- _yacc -d calc.y_
- _lex calc.l_
- _gcc lex.yy.c y.tab.c -o calc_
- _./calc_

## Calculation example (arithmatics exprs)
---
- a = 1 + 100;
- print a;
---
- B = a - 10;
- print B;
---
- print a + b;
---
- exit
