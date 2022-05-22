# my-configure
A simple configuration script for C programs, inspired by automake.

## how to use
Use ```./configure.sh``` to run the script.

### Makefiles
You can make a Makefile titled ```Makefile.make```. This will be the Makefile that ```configure.sh``` will use. It will replace anything with for example ```_configure_CC``` with your chosen C compiler. Here is an example ```Makefile.orig```:

```
CC=_configure_CC
CXX=_configure_CXX
DESTDIR=_configure_DESTDIR

all: hello

hello: hello.c
	$(CC) -o hello hello.c

clean:
	rm hello

install:
	cp -v hello $(DESTDIR)/
```

### options
You can run ```./configure.sh -help``` to get a list of options. Here are those:

```
-cc	Use specified C compiler
-cxx	Use specified C++ compiler
-cross	Use specified cross-compilation prefix
-prefix Use specified installation prefix
```

### config.defaults
You can create a file called ```config.defaults```. This is a simple bash script that you can set some default configuration values in. Here is an example:

```
CC=gcc # C compiler
CXX=clang++ # C++ compiler
CROSS_COMPILE=i686-linux-unknown- # cross compiler
CHECK_HEADERS="stdio.h stdlib.h" # check for the existance of these headers
CHECK_PACKAGES="example another-example" # check for the existance of these pkg-config files
DESTDIR=/usr # installation prefix
```
