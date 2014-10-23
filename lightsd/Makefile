include ../Makefile.inc
SRCS := lightsd.c
OBJS := $(SRCS:.c=.o)
BIN := lightsd
LIBS := 

.PHONY: all
all: lightsd

lightsd: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.PHONY: clean
clean:
	rm lightsd $(OBJS)
