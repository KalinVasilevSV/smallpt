# smallpt Makefile
#

# Select appropriate compiler.
CPP=g++
CPPFLAGS=-O3

ifdef DEBUG
CPPFLAGS=-g
endif

default: all

all: smallpt

smallpt: smallpt.cpp Makefile
	$(CPP) $(CPPFLAGS) -o smallpt smallpt.cpp 

clean:
	-rm smallpt

DISTNAME = smallpt
DISTFILES = README LICENSE.txt smallpt.cpp Makefile result_25k.png

SRCS = $(CFILES) $(C++FILES) $(C++FILES:%.cxx=%.h)

others:
	$(CPP) $(CPPFLAGS)
