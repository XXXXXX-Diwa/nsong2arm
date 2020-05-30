CXX ?= g++

CXXFLAGS := -Wall -Werror -std=c++11 -O2

SRCS := main.cpp error.cpp ReadData.cpp WriteASMFile.cpp

HEADERS := main.h error.h ReadData.h WriteASMFile.h

.PHONY: all clean

all: trackDefine
	@:
	
trackDefine: $(SRCS) $(HEADERS)
			$(CXX) $(CXXFLAGS) $(SRCS) -o $@ $(LDFLAGS)
			
clean:
	$(RM) trackDefine trackDefine.exe