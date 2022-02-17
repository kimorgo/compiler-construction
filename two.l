%{
#include <stdio.h>
%}

%%
[\t]+
 is   |
am    |
are   |
were  |
was   |
be    |
being |
been  |
do    |
does  |
did   |
will  |
would |
should |
can   |
could |
has   |
have  |
had   |
go {printf("Found verb: %s\n", yytext);}
[a-zA-Z]+ {printf("%s: is not verb\n",yytext);}
%%

int main(int argc, char **argv) {

yyin = fopen(argv[1], "r");
yylex();

return 0;

}

// this should always return true in our cases.
// Maybe we could also use the default one defined in flex
// to do that compile using flag -lfl
int yywrap()
{
return 1;
}
