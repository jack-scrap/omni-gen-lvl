CXX=g++

.PHONY: clean

HDR=json.hpp

all: make

main.o: main.cpp
	$(CXX) -c $< -o $@

make: main.o $(HDR)
	$(CXX) $<

clean:
	rm *.o a.out
