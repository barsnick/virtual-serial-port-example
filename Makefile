CPPFLAGS += -O2 -Wall -Wextra
LD = $(CXX)
LDFLAGS += -lpthread

all: virtual-serial-port-example
virtual-serial-port-example: main.o
	$(LD) -o $@ $< $(LDFLAGS)
main.o: main.cpp
