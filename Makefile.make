# configure.sh stuff
CC=_configure_CC
CXX=_configure_CXX
DESTDIR=_configure_DESTDIR

# main target
all: hello

hello: hello.o
	$(CC) -o hello hello.o

hello.o: hello.c
	$(CC) -c hello.c

# clean source directory
clean:
	rm *.o hello

# install hello to test/
install:
	cp -v hello $(DESTDIR)
