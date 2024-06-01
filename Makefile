CC = gcc
CFLAGS = -Wall -Werror -I./src/libs/

TARGET = bin/dijekstra
MAINOBJ = src/scripts/main.o
SRCS = $(wildcard ./src/libs/*.c)
OBJS = $(SRCS:.c=.o)

.PHONY: all clean run

all: $(TARGET)

$(TARGET): $(MAINOBJ) $(OBJS)
	$(CC) $^ -o $@

$(OBJS): %.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run:
	./bin/dijekstra

clean:
	rm -f $(TARGET) $(MAINOBJ) $(OBJS)
