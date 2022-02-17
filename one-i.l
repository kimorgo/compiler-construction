%{
#include  <stdio.h>
int words = 0;
int size = 0;
int characters=0;
int digits=0;
int symbols=0;

%}

%%
[\t \n] words++;
[a-zA-Z] characters++;
[0-9] digits++;
. symbols++;
%%

int main()
{
    yyin= fopen("Untitled1.txt","r");
    yylex();
    size= characters + digits + symbols;

    printf("The number of words is: %d \n", words);
    printf("There are %d characters, %d digits and %d symbols \n", characters,digits,symbols);
    printf("The total size is: %d\n", size);
    fclose(yyin);
    return 0;
}

int yywrap(){
return 1;
}
