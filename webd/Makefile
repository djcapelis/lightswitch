include ../Makefile.inc
SRCS := webd.c
OBJS := $(SRCS:.c=.o)
BIN := webd
LIBS := 

.PHONY: all
all: webd

webd: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.PHONY: clean
clean:
	rm webd $(OBJS)
