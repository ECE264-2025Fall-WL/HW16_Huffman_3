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

clean:
	rm -f vgcore.* *.o hw12 *.disc *.txt *.b

testall: test1 test2 test3 test4 test5 test6

test1: hw16
	./hw16 1 inputs/test1.txt outputs/test1.b > output1
	diff -w output1 expected/test1 

test2: hw16
	./hw16 1 inputs/test2.txt outputs/test2.b > output2
	diff -w output2 expected/test2

test3: hw16
	./hw16 1 inputs/test3.txt outputs/test3.b > output3
	diff -w output3 expected/test3

test4: hw16
	./hw16 2 inputs/test4.b trees/test4.b outputs/test4.txt
	diff outputs/test4.txt expected/test4

test5: hw16
	./hw16 2 inputs/test5.b trees/test5.b outputs/test5.txt
	diff outputs/test5.txt expected/test5

test6: hw16
	./hw16 2 inputs/test6.b trees/test6.b outputs/test6.txt
	diff outputs/test6.txt expected/test6
