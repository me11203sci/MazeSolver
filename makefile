## Macros.
COMPILER=g++

default: solver

## Normal Compilation of Main Program (solver.cpp).
solver: solver.o
	$(COMPILER) solver.o -o $@.out
	./$@.out

solver.o: sourceFiles/solver.cpp
	$(COMPILER) -c sourceFiles/solver.cpp

## PHONY targets.
.PHONY: clean

clean:
	-@rm -rf *.o *.out
