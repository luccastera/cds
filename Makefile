DEBUG=-g
CFLAGS=--std=c99 -Wall
LDLIBS=
CC=gcc

OBJECTS = list.o
PRGNAME = cds

all: cds

# Dependencies
list.o: list.c list.h
dlist.o: dlist.c dlist.h
clist.o: clist.c clist.h
chtbl.o: chtbl.c chtbl.h
hashpjw.o: hashpjw.c hashpjw.h
ohtbl.o: ohtbl.c ohtbl.h

cds: list.o dlist.o clist.o chtbl.o hashpjw.o ohtbl.o
	$(CC) $(PRGNAME).c -o $(PRGNAME)  $(CFLAGS) $(DEBUG) $(OBJECTS)

clean:
	rm -rf $(PRGNAME) *.o $(PRGNAME).dSYM

dep:
	$(CC) -MM *.c
