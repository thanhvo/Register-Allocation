#include "Instruction.h"
#include "InstructionInfo.h"

bool Instruction::isWrite() {
	if (
		loadInstSet.find(opCode) != loadInstSet.end() ||
		absNegateInstSet.find(opCode) != absNegateInstSet.end() ||
		moveInstSet.find(opCode) != moveInstSet.end() ||
		arithmeticInstSet.find(opCode) != arithmeticInstSet.end()
	) {
		return true;
	} else
		return false;
}

void Instruction::removeFromParent() {

}

void Instruction::eraseFromParent() {

}
