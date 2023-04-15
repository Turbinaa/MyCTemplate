CC = gcc
CFLAGS = -Wall -pedantic -g
DEPS = program.h
OBJDIR = target/obj
OBJ = $(OBJDIR)/program.o $(OBJDIR)/pi.o
LIBS = 


$(OBJDIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

target/bin/a.out: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(OBJ) target/bin/*

run: 
	./target/bin/a.out

create_dir:
	mkdir -p target/obj && mkdir -p target/bin