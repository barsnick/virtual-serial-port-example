CPPFLAGS += -O2 -Wall -Wextra
LD = $(CXX)
LDFLAGS += -lpthread

TARGET = virtual-serial-port-example
OBJECTS = main.o

all: $(TARGET)
$(TARGET): $(OBJECTS)
	$(LD) -o $@ $< $(LDFLAGS)

clean:
	-rm -f $(TARGET) $(OBJECTS)
