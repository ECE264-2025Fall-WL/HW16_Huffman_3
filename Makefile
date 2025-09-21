# ***
# *** DO NOT modify this file 
# ***

WARNING = -Wall -Wshadow --pedantic
ERROR = -Wvla -Werror
GCC = gcc -std=c99 -g $(WARNING) $(ERROR) 

SRCS = main.c hw16.c
OBJS = $(SRCS:%.c=%.o)

hw16: $(OBJS)
	$(GCC) $(OBJS) -o hw16

.c.o:
	$(GCC) -c $*.c

testall: test1 test2 test3 test4 test5 test6

test1: hw16
	./hw16 1 inputs/test1 outputs/test1 >> output1
	diff output1 37 

test2: hw16
	./hw16 1 inputs/test2 outputs/test2 >> output2
	diff output2 236

test3: hw16
	./hw16 1 inputs/test3 outputs/test3 >> ouput3
	diff output3 237

test4: hw16
	./hw16 2 inputs/test4 outputs/test4 >> output4
	diff expected/test4 output4

test4: hw16
	./hw16 2 inputs/test5 outputs/test5 >> output5
	diff expected/test5 output5

test5: hw16
	./hw16 2 inputs/test6 outputs/test6 >> output6
	diff expected/test6 output6