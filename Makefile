SH=/bin/bash

CXX=g++

HDR=json.hpp

.PHONY: all
all: omni_gen_lvl

main.o: main.cpp
	$(CXX) -c $< -o $@

omni_gen_lvl: main.o $(HDR)
	$(CXX) $< -o $@

.PHONY: clean
clean:
	rm *.o omni_gen_lvl
