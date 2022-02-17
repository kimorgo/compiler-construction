%{
	/* Definition section */
	#include<stdio.h>
	#include<stdlib.h>

	extern int yylex();

	int yyerror(char *error_msg);
	int a_counter=0;
%}

%token a b NL 

	/* Rule Section */
%%
	stmt: S NL { printf("No of A's: %d\n", a_counter);
			exit(0); }
			;

	S:	a S {++a_counter;}
	 |	b
	 ;
%%

int yyerror(char *msg)
{
	printf("invalid string\n");
	exit(0);
}

//driver code
main()
{
printf("Enter the string\n");
yyparse();
  
}
