include ../Makefile.inc
SRCS := switchd.c
OBJS := $(SRCS:.c=.o)
BIN := switchd
LIBS := 

.PHONY: all
all: switchd

switchd: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.PHONY: clean
clean:
	rm switchd $(OBJS)
