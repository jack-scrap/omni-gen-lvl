SH=/bin/bash

CXX=g++

BUILDDIR:=build

PREFIX:=/usr/local

BINDIR:=$(PREFIX)/bin

SRCS:=layout.cpp
OBJS:=$(SRC:%.cpp=%.o)

HDRS=std_data.h json.hpp

.PHONY: all
all: mk_build omni_gen_lvl

%.o: %.cpp %.h
	$(CXX) -c $< -o $@

$(BUILDDIR)/main.o: main.cpp
	$(CXX) -c $< -o $@

omni_gen_lvl: $(BUILDDIR)/main.o $(OBJS) $(HDRS)
	$(CXX) $< -o $@

.PHONY: mk_build
mk_build:
	mkdir -p $(BUILDDIR)

.PHONY: install
install:
	sudo cp omni_gen_lvl $(BINDIR)

.PHONY: clean
clean:
	rm $(BUILDDIR)/*.o omni_gen_lvl
