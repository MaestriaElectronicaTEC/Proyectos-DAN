APP			= Ram
SRC			= ram_test.cpp
CXX			= g++
SYSC_PATH	=/usr/local/systemc-2.3.1/
LDFLAGS		= -L. -L$(SYSC_PATH)/lib-linux64 -Wl,-rpath=$(SYSC_PATH)/lib-linux64
CFLAGS		= -I. -I$(SYSC_PATH)/include
MFLAGS		= -lsystemc -lm

all:
		$(CXX) $(CFLAGS) $(LDFLAGS) -o $(APP) $(SRC) $(MFLAGS)

