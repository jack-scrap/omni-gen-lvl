CXX=g++

.PHONY: clean

all: make

main.o: main.cpp
	$(CXX) -c $< -o $@

make: main.o
	$(CXX) $^

clean:
	rm *.o a.out
