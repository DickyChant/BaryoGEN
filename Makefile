CXXFLAGS=$(shell root-config --cflags)
#GLIBS=$(shell root-config --glibs)

SRCS:=$(wildcard src/*.cc)

all: BaryoGEN

BaryoGEN: $(SRCS)
	g++ $(CXXFLAGS) $^ -o $@ -I$(HOME)/local/include/ `root-config --glibs | sed -E "s#-lNet##"` `lhapdf-config --cflags --ldflags`
