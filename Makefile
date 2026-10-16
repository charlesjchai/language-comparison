CC ?= cc
CXX ?= c++
CFLAGS ?= -O3 -Wall -Wextra
CXXFLAGS ?= -O3 -Wall -Wextra
JC ?= javac
JFLAGS ?=
RUSTC ?= rustc
RUSTFLAGS ?= -C opt-level=3 -C strip=symbols -C panic=abort

all: prime_c prime_cpp prime_rs prime.class

prime_c: prime.c
	$(CC) $(CFLAGS) $^ -o $@
prime_cpp: prime.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@
prime_rs: prime.rs
	$(RUSTC) $(RUSTFLAGS) $^ -o $@
prime.class: prime.java
	$(JC) $(JFLAGS) $^

clean:
	rm -f prime_c prime_cpp prime_rs prime.class
distclean: clean
	find . \( -name "*.a" -o -name "*.o" -o -name "*.dSYM" -o -name "*.so" -o -name "*.dylib" -o -name "*.rlib" -o -name "*.luac" -o -name "*~" -o -name "#*#" -o -name ".#*" -o -name "*.bak" \) -delete

.PHONY: all clean distclean
