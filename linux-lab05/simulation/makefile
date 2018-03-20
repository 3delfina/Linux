CC=gcc
CFLAGS=-Wall
LDFLAGS=-lm  # Maths library should be linked

OPTCFLAGS=-O2
DEBUGCFLAGS=-g

exe = graph
objs = main.o simulation.o

#Default target, dependency on $(exe) target
all: $(exe)

#Optimised target, add OPTCFLAGS
opt: CFLAGS+=$(OPTCFLAGS)
opt: $(exe)

#Debug target, add DEBUGCFLAGS
debug:  CFLAGS+=$(DEBUGCFLAGS)
debug: $(exe)

$(exe): $(objs) 
	$(CC) $(LDFLAGS) $^ -o $@ 

#Target: main.o, main.c is required to make it
main.o: main.c
	$(CC) $(CFLAGS) -c $<

#Target: simulation.o, simulation.c is required to make it
simulation.o: simulation.c
	$(CC) $(CFLAGS)  -c $< 

#The target that will be run whenever specified
.PHONY: clean 

clean:
	rm *.o
   
