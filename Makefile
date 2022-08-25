SH=/bin/bash

CXX=g++

HDR=json.hpp

.PHONY: all
all: make

main.o: main.cpp
	$(CXX) -c $< -o $@

.PHONY: make
make: main.o $(HDR)
	$(CXX) $<

.PHONY: clean
clean:
	rm *.o a.out
