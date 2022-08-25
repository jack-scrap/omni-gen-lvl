CXX=g++

HDR=json.hpp

all: make

main.o: main.cpp
	$(CXX) -c $< -o $@

make: main.o $(HDR)
	$(CXX) $<

.PHONY: clean
clean:
	rm *.o a.out
