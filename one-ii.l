%{
#include<stdio.h>
#include<ctype.h>
int i;
%}

%%

abc {
for(i=0;i<yyleng;i++)
    fprintf(yyout, "%c",toupper(yytext[i])); // convert char each character of the match to uppercase
}


%%

int main()
{
// the program should be given two input files: an input file and an output file
  yyin = fopen("input.txt", "r");
  yyout = fopen("output.txt", "w");
  yylex();


  // clean up
  fclose(yyin);
  fclose(yyout);
  return 0;
}

int yywrap()
{
return 1;
}
