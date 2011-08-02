CXXFLAGS =	-O2 -g -Wall -fmessage-length=0

OBJS =	Tokenizer.o		Instruction.o	BasicBlock.o	Function.o	Module.o \
		Utils.o InstructionInfo.o Parser.o	Main.o			

LIBS =

TARGET =	AllocateRegisters

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBS)

all:	$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
