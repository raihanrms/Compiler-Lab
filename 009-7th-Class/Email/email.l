%
{
  int flag = 0; %
} %
% [a - z.0 - 9 _] + @[a - z] + ".com" | ".in"
flag = 1; %
%
main() {
  yylex();
  if (flag == 1)
    printf("Accepted");
  else
    printf("Not Accepted");
}
