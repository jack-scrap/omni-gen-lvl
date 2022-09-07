SH=/bin/bash

CXX=g++

PREFIX:=/usr/local

BINDIR:=$(PREFIX)/bin

HDR=json.hpp

.PHONY: all
all: omni_gen_lvl

main.o: main.cpp
	$(CXX) -c $< -o $@

omni_gen_lvl: main.o $(HDR)
	$(CXX) $< -o $@

.PHONY: install
install:
	sudo cp omni_gen_lvl $(BINDIR)

.PHONY: clean
clean:
	rm *.o omni_gen_lvl
