count: count.tab.o lex.yy.o
	gcc -o count count.tab.o lex.yy.o

count.tab.o: count.tab.c count.tab.h
	gcc -c count.tab.c -w

lex.yy.o: lex.yy.c count.tab.h
	gcc -c lex.yy.c

lex.yy.c: count.l
	flex count.l

count.tab.c: count.y
	bison -d count.y
