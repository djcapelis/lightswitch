include ../Makefile.inc
SRCS := ambd.c
OBJS := $(SRCS:.c=.o)
BIN := ambd
LIBS := 

.PHONY: all
all: ambd

ambd: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.PHONY: clean
clean:
	rm ambd $(OBJS)
