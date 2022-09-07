SH=/bin/bash

CXX=g++

HDR=json.hpp

.PHONY: all
all: make

main.o: main.cpp
	$(CXX) -c $< -o $@

.PHONY: make
make: main.o $(HDR)
	$(CXX) $< -o omni_gen_lvl

.PHONY: clean
clean:
	rm *.o omni_gen_lvl
