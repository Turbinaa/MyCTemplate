CC = gcc
CFLAGS = -Wall -pedantic -g
DEPS = program.h
OBJDIR = target/obj
OBJ = $(OBJDIR)/program.o $(OBJDIR)/pi.o $(OBJDIR)/my_random.o
LIBS = 

$(OBJDIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

target/bin/app: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(OBJ) target/bin/app

run: 
	./target/bin/app
