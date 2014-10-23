include ../Makefile.inc
SRCS := stated.c
OBJS := $(SRCS:.c=.o)
BIN := stated
LIBS := 

.PHONY: all
all: stated

stated: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.PHONY: clean
clean:
	rm stated $(OBJS)
