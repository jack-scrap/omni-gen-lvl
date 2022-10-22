SH=/bin/bash

CXX=g++

PREFIX:=/usr/local

BINDIR:=$(PREFIX)/bin

SRCS:=layout.cpp
OBJS:=$(SRC:%.cpp=%.o)

HDR=json.hpp

.PHONY: all
all: omni_gen_lvl

%.o: %.cpp %.h
	$(CXX) -c $< -o $@

main.o: main.cpp
	$(CXX) -c $< -o $@

omni_gen_lvl: main.o $(OBJS) $(HDR)
	$(CXX) $< -o $@

.PHONY: install
install:
	sudo cp omni_gen_lvl $(BINDIR)

.PHONY: clean
clean:
	rm *.o omni_gen_lvl
