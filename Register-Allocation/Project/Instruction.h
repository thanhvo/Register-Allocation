#ifndef INSTR_H
#define INSTR_H

#include "BasicBlock.h"
#include <string>
#include <set>

using namespace std;

class BasicBlock;

class Instruction {
	BasicBlock* parent;
	// The line presenting the instruction in the input code
	string content;
	string opCode;
	unsigned operandNum;
	string* operandList;

public:
	Instruction() {
		// The maximum number of operands is 3
		operandList = new string[3];
	}

	~Instruction() {
	}

	BasicBlock* getParent() {
		return parent;
	}

	void setParent(BasicBlock* _parent) {
		parent = _parent;
	}

	void setContent(string _content) {
		content = _content;
	}

	string getContent() {
		return content;
	}

	void setOpCode(string _opCode) {
		opCode = _opCode;
	}

	string getOpCode() {
		return opCode;
	}

	unsigned getOperandNum() {
		return operandNum;
	}

	void setOperandNum(unsigned num) {
		operandNum = num;
	}

	string getOperand(unsigned i) {
		return operandList[i - 1];
	}

	void setOperand(unsigned i, string value) {
		operandList[i - 1] = value;
	}

	set<string> getDEF();

	set<string> getUSE();

	bool isWrite();

	void removeFromParent();

	void eraseFromParent();
};

class RealRegister: public Instruction {
public:
	RealRegister(string registerName) {
		setContent(registerName);
		setOperandNum(1);
		setOperand(1, registerName);
	}
	~RealRegister() {
	}
};

#endif
