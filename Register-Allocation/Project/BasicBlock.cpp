#include <sstream>
#include <iostream>
#include "BasicBlock.h"
#include "Tokenizer.h"
#include "InstructionInfo.h"
#include "Utils.h"

RealRegister* BasicBlock::r2 = new RealRegister("$2");
RealRegister* BasicBlock::r4 = new RealRegister("$4");
RealRegister* BasicBlock::r5 = new RealRegister("$5");
RealRegister* BasicBlock::r6 = new RealRegister("$6");
RealRegister* BasicBlock::r7 = new RealRegister("$7");
RealRegister* BasicBlock::r31 = new RealRegister("$31");

void BasicBlock::print(ostream& out) {
	out << header;
	out << content;
}

void BasicBlock::setID(int _id) {
	id = _id;
	ostringstream ss;
	ss << "#---BB" << id << "---\n";
	header += ss.str();
}

void BasicBlock::insertInst(Instruction *inst) {
	instList.push_back(inst);
	inst->setParent(this);
}

void BasicBlock::insertNextBasicBlock(BasicBlock *nextBB) {
	postBlocks.insert(nextBB);
}

void BasicBlock::insertPreBasicBlock(BasicBlock *preBB) {
	preBlocks.insert(preBB);
}

void BasicBlock::updateUSE(string source) {
	string reg = getRegister(source);
	if (isRegister(reg) && DEF.find(reg) == DEF.end()) {
		USE.insert(reg);
	}
	int regID = getRegisterID(reg);
	if (regID > getParent()->getNumOfSymRegs()) {
		getParent()->setNumOfSymRegs(regID);
	}
}

void BasicBlock::updateDEF(string destination) {
	string reg = getRegister(destination);
	if (isRegister(reg)) {
		DEF.insert(reg);
		if (USE.find(reg) == USE.end())
			FIRSTDEF.insert(reg);
	}
	int regID = getRegisterID(reg);
	if (regID > getParent()->getNumOfSymRegs()) {
		getParent()->setNumOfSymRegs(regID);
	}
}

void BasicBlock::initVarSets() {
	for (
		InstListType::iterator II = instList.begin();
		II != instList.end(); II ++
	) {
		Instruction* inst = *II;
		string line = inst->getContent();
		Tokenizer tokenizer( line, " ,\t\r\n" );
		tokenizer.NextToken();
		string opCode = tokenizer.GetToken();
		inst->setOpCode(opCode);
		/// Load Instructions
		if (
			loadInstSet.find(opCode) != loadInstSet.end()
		) {
			inst->setOperandNum(2);
			tokenizer.NextToken();
			string destination = tokenizer.GetToken();
			inst->setOperand(1, destination);

			tokenizer.NextToken();
			string address = tokenizer.GetToken();
			inst->setOperand(2, address);

			/// Update DEF and USE sets
			updateDEF(destination);
			updateUSE(address);
		}

		/// Store Instructions
		else if (
			storeInstSet.find(opCode) != storeInstSet.end()
		) {
			inst->setOperandNum(2);
			tokenizer.NextToken();
			string source = tokenizer.GetToken();
			inst->setOperand(1, source);

			tokenizer.NextToken();
			string address = tokenizer.GetToken();
			inst->setOperand(2, address);

			/// Add source to the UEVAR set
			updateUSE(source);
			updateUSE(address);
		}

		else if (
			absNegateInstSet.find(opCode) != absNegateInstSet.end() ||
			moveInstSet.find(opCode) != moveInstSet.end()
		) {
			inst->setOperandNum(2);
			tokenizer.NextToken();
			string destination = tokenizer.GetToken();
			inst->setOperand(1, destination);

			tokenizer.NextToken();
			string source = tokenizer.GetToken();
			inst->setOperand(2, source);

			updateUSE(source);
			updateDEF(destination);
		}

		else if (
			arithmeticInstSet.find(opCode) != arithmeticInstSet.end()
		) {
			inst->setOperandNum(3);
			tokenizer.NextToken();
			string destination = tokenizer.GetToken();
			inst->setOperand(1, destination);
			tokenizer.NextToken();
			string src1 = tokenizer.GetToken();
			inst->setOperand(2, src1);
			tokenizer.NextToken();
			string src2 = tokenizer.GetToken();
			inst->setOperand(3, src2);

			updateUSE(src1);
			updateUSE(src2);
			updateDEF(destination);
		}

		else if (
			twoOpArithmeticInstSet.find(opCode) != twoOpArithmeticInstSet.end()
		) {
			inst->setOperandNum(2);
			tokenizer.NextToken();
			string src1 = tokenizer.GetToken();
			inst->setOperand(1, src1);
			tokenizer.NextToken();
			string src2 = tokenizer.GetToken();
			inst->setOperand(2, src2);

			updateUSE(src1);
			updateUSE(src2);
		}

		else if (
			threeOpBranchInstSet.find(opCode) != threeOpBranchInstSet.end()
		) {
			inst->setOperandNum(3);
			tokenizer.NextToken();
			string src1 = tokenizer.GetToken();
			inst->setOperand(1, src1);
			tokenizer.NextToken();
			string src2 = tokenizer.GetToken();
			inst->setOperand(2, src2);
			tokenizer.NextToken();
			string label = tokenizer.GetToken();
			inst->setOperand(3, label);

			updateUSE(src1);
			updateUSE(src2);
			updateUSE(label);
		}

		else if (
			twoOpBranchInstSet.find(opCode) != twoOpBranchInstSet.end()
		) {
			inst->setOperandNum(2);
			tokenizer.NextToken();
			string source = tokenizer.GetToken();
			inst->setOperand(1, source);
			tokenizer.NextToken();
			string label = tokenizer.GetToken();
			inst->setOperand(2, label);

			updateUSE(source);
			updateUSE(label);
		}

		else if (
			oneOpBranchInstSet.find(opCode) != oneOpBranchInstSet.end() ||
			jumpInstSet.find(opCode) != jumpInstSet.end()
		) {
			inst->setOperandNum(1);
			tokenizer.NextToken();
			string label = tokenizer.GetToken();
			inst->setOperand(1, label);

			updateUSE(label);
			if (jumpInstSet.find(opCode) != jumpInstSet.end())
				updateDEF("$2");
		}

		/// syscall instruction
		else if (opCode.compare("syscall") == 0) {

		}
	}
}

void BasicBlock::addLiveAnalysisInfo() {
	string liveinStr = getStr(LIVERANGEIN, "#");
	header += liveinStr;

}

string BasicBlock::getLabels() {
	string labels;
	for (
		vector<string>::iterator ll = labelList.begin();
		ll != labelList.end(); ll++
	) {
		string label = *ll;
		labels += label;
	}
	return labels;
}

bool BasicBlock::inGEN(string operand) {
	for (set<Instruction*>::iterator II = GEN.begin(); II != GEN.end(); II++) {
		Instruction* inst = *II;
		if (inst->getOperand(1).compare(operand.c_str()) == 0)
			return true;
	}
	return false;
}

Instruction* BasicBlock::findInGEN(string firstOperand) {
	for (set<Instruction*>::iterator II = GEN.begin(); II != GEN.end(); II++) {
		Instruction* inst = *II;
		if (inst->getOperand(1).compare(firstOperand.c_str()) == 0)
			return inst;
	}
	return NULL;
}

void BasicBlock::computeGENKILL() {
	if (id == 1) {
		GEN.insert(r31);
	}
	for (
		InstListType::iterator II = instList.begin();
		II != instList.end(); II ++
	) {
		Instruction* inst = *II;
		if (inst->isWrite()) {
			string firstOperand = inst->getOperand(1);
			if (isRegister(firstOperand)) {
				if (!inGEN(firstOperand))
					GEN.insert(inst);
				else {
					Instruction* instruction = findInGEN(firstOperand);
					GEN.erase(instruction);
					KILL.insert(instruction);
					GEN.insert(inst);
				}
			}
		}
		if (jumpInstSet.find(inst->getOpCode()) != jumpInstSet.end()) {
			Instruction* instruction = findInGEN(r2->getOperand(1));
			if (instruction != NULL) {
				GEN.erase(instruction);
				KILL.insert(instruction);
			}
			GEN.insert(r2);
			KILL.insert(r2);
			KILL.insert(r4);
			KILL.insert(r5);
			KILL.insert(r6);
			KILL.insert(r7);
			KILL.insert(r31);
		}
	}

	Function* function = this->getParent();

	for (
		Function::BasicBlockListType::iterator BB = function->getBasicBlockList().begin();
		BB != function->getBasicBlockList().end(); BB++
	) {
		BasicBlock* basicBlock = *BB;
		if (basicBlock->getID() != this->getID()) {
			for (
				InstListType::iterator II = basicBlock->getInstList().begin();
				II != basicBlock->getInstList().end(); II ++
			) {
				Instruction* inst = *II;
				if (inst->isWrite()) {
					string firstOperand = inst->getOperand(1);
					if ( inGEN(firstOperand)) {
						KILL.insert(inst);
					}
				}
			}
		}
	}
}

bool BasicBlock::needToErase(string reg, Instruction* I) {
	bool after = false;
	for (
		InstListType::iterator II = instList.begin();
		II != instList.end(); II++
	) {
		Instruction* inst = *II;
		if ( inst == I ) {
			after = true;
			continue;
		}
		string opCode = inst->getOpCode();
		if ( after ) {
			/// Load Instructions
			if (
				loadInstSet.find(opCode) != loadInstSet.end()
			) {
				string destination = inst->getOperand(1);
				string address = inst->getOperand(2);
				if (isReg(address, reg))
					return false;
				if (isReg(destination, reg))
					return true;
			}
			/// Store Instructions
			else if (
				storeInstSet.find(opCode) != storeInstSet.end()
			) {
				string source = inst->getOperand(1);
				string address = inst->getOperand(2);
				if (isReg(source, reg) || isReg(address, reg))
					return false;
			}
			else if (
				absNegateInstSet.find(opCode) != absNegateInstSet.end() ||
				moveInstSet.find(opCode) != moveInstSet.end()
			) {
				string destination = inst->getOperand(1);
				string source = inst->getOperand(2);
				if (isReg(source, reg))
					return false;
				if (isReg(destination, reg))
					return true;
			}
			else if (
				arithmeticInstSet.find(opCode) != arithmeticInstSet.end()
			) {
				string destination = inst->getOperand(1);
				string src1 = inst->getOperand(2);
				string src2 = inst->getOperand(3);
				if (isReg(src1, reg) || isReg(src2, reg))
					return false;
				if (isReg(destination, reg))
					return true;
			}
			else if (
				twoOpArithmeticInstSet.find(opCode) != twoOpArithmeticInstSet.end()
			) {
				string src1 = inst->getOperand(1);
				string src2 = inst->getOperand(2);
				if (isReg(src1, reg) || isReg(src2, reg))
					return false;
			}
			else if (
				threeOpBranchInstSet.find(opCode) != threeOpBranchInstSet.end()
			) {
				string src1 = inst->getOperand(1);
				string src2 = inst->getOperand(2);
				string label = inst->getOperand(3);
				if ( isReg(src1, reg) || isReg(src2, reg) || isReg(label, reg))
					return false;
			}
			else if (
				twoOpBranchInstSet.find(opCode) != twoOpBranchInstSet.end()
			) {
				string source = inst->getOperand(1);
				string label = inst->getOperand(2);
				if (isReg(source, reg) || isReg(label, reg))
					return false;
			}
			else if (
				oneOpBranchInstSet.find(opCode) != oneOpBranchInstSet.end() ||
				jumpInstSet.find(opCode) != jumpInstSet.end()
			) {
				string label = inst->getOperand(1);
				if (isReg(label, reg))
					return false;

				if (opCode.compare("jal") == 0 || opCode.compare("jalr") == 0){
					if (
						reg.compare("$4") == 0 ||
						reg.compare("$5") == 0 ||
						reg.compare("$6") == 0 ||
						reg.compare("$7") == 0
					) {
						return false;
					} else if ( reg.compare("$2") == 0)
						return true;
				} else if (
					opCode.compare("j") == 0 &&
					reg.compare("$2") == 0 && isRegister(label)
				)
					return false;
			}
		}
	}
	if (UEUOUT.find(reg) == UEUOUT.end())
		return true;
	else
		return false;
}

void BasicBlock::addToCopyList( string destReg, string addReg) {
	if (destReg.compare(addReg.c_str()) == 0)
		return;
	int regID = getRegisterID(destReg);
	if (
		regID > 0 && !parent->inInterferenceList(regID, addReg) &&
		isRegister(addReg)
	)
		parent->addToCopyList(regID, addReg);
}

void BasicBlock::addToInterferenceList(
	set<string> LIVERANGE, string destReg
) {
	int regID = getRegisterID(destReg);
	for (set<string>::iterator it = LIVERANGE.begin(); it != LIVERANGE.end(); it++) {
		string reg = *it;
		int newRegID = getRegisterID(reg);
		if (newRegID != regID) {
			if (regID > 0)
				parent->addToInterferenceList(regID, reg);
			if (newRegID > 0)
				parent->addToInterferenceList(newRegID, destReg);
		}
	}
}

bool BasicBlock::needToInsert(string reg, Instruction* I) {
	if (reg.compare("$0") == 0)
		return false;
	if ( !needToErase(reg, I) )
		return true;
	else
		return false;
}

void BasicBlock::constructInterferenceGraph() {
	set<string> LIVERANGE = LIVERANGEIN;
	for (
		InstListType::iterator II = instList.begin();
		II != instList.end(); II ++
	) {

		Instruction* inst = *II;
		string opCode = inst->getOpCode();
		/// Load Instructions
		if (
			loadInstSet.find(opCode) != loadInstSet.end()
		) {
			string destination = inst->getOperand(1);
			string address = inst->getOperand(2);
			string addReg = getRegister(address);
			parent->increaseUSES(addReg);
			string destReg = getRegister(destination);
			if ( needToErase(addReg, inst) )
				LIVERANGE.erase(addReg);
			if ( needToInsert(destReg, inst) ) {
				addToInterferenceList(LIVERANGE, destReg);
				LIVERANGE.insert(destReg);
				parent->increaseDEFS(destReg);
			}
		}
		/// Store Instructions
		else if (
			storeInstSet.find(opCode) != storeInstSet.end()
		) {
			string source = inst->getOperand(1);
			string address = inst->getOperand(2);
			string srcReg = getRegister(source);
			string addReg = getRegister(address);
			parent->increaseUSES(srcReg);
			parent->increaseUSES(addReg);
			if (needToErase(srcReg, inst))
				LIVERANGE.erase(srcReg);
			if (needToErase(addReg, inst))
				LIVERANGE.erase(addReg);
		}

		else if (
			absNegateInstSet.find(opCode) != absNegateInstSet.end() ||
			moveInstSet.find(opCode) != moveInstSet.end()
		) {
			string destination = inst->getOperand(1);
			string source = inst->getOperand(2);
			string srcReg = getRegister(source);
			string destReg = getRegister(destination);
			parent->increaseUSES(srcReg);
			if (needToErase(srcReg, inst))
				LIVERANGE.erase(srcReg);
			if (!parent->isInterfering(destReg, srcReg)
					&& !parent->isInterfering(srcReg, destReg)) {
				addToCopyList(destReg, srcReg);
				addToCopyList(srcReg, destReg);
			}
			if ( needToInsert(destReg, inst) ) {
				bool erased = LIVERANGE.find(srcReg) != LIVERANGE.end();
				if (erased)
					LIVERANGE.erase(srcReg);
				addToInterferenceList(LIVERANGE, destReg);
				if (erased)
					LIVERANGE.insert(srcReg);
				LIVERANGE.insert(destReg);
				parent->increaseDEFS(destReg);
			}
		}

		else if (
			arithmeticInstSet.find(opCode) != arithmeticInstSet.end()
		) {
			string destination = inst->getOperand(1);
			string src1 = inst->getOperand(2);
			string src2 = inst->getOperand(3);
			string destReg = getRegister(destination);
			string srcReg1 = getRegister(src1);
			string srcReg2 = getRegister(src2);
			/// Update USES
			parent->increaseUSES(srcReg1);
			parent->increaseUSES(srcReg2);
			/// Update LIVERANGE
			if (needToErase(srcReg1, inst))
				LIVERANGE.erase(srcReg1);
			if (needToErase(srcReg2, inst))
				LIVERANGE.erase(srcReg2);
			if ( needToInsert(destReg, inst) ) {
				addToInterferenceList(LIVERANGE, destReg);
				LIVERANGE.insert(destReg);
				parent->increaseDEFS(destReg);
			}
		}
		else if (
			twoOpArithmeticInstSet.find(opCode) != twoOpArithmeticInstSet.end()
		) {
			string src1 = inst->getOperand(1);
			string src2 = inst->getOperand(2);
			string srcReg1 = getRegister(src1);
			string srcReg2 = getRegister(src2);
			parent->increaseUSES(srcReg1);
			parent->increaseUSES(srcReg2);
			if (needToErase(srcReg1, inst))
				LIVERANGE.erase(srcReg1);
			if (needToErase(srcReg2, inst))
				LIVERANGE.erase(srcReg2);
		}

		else if (
			threeOpBranchInstSet.find(opCode) != threeOpBranchInstSet.end()
		) {
			string src1 = inst->getOperand(1);
			string src2 = inst->getOperand(2);
			string label = inst->getOperand(3);
			string srcReg1 = getRegister(src1);
			string srcReg2 = getRegister(src2);
			string labelReg = getRegister(label);
			parent->increaseUSES(srcReg1);
			parent->increaseUSES(srcReg2);
			parent->increaseUSES(labelReg);
			if (needToErase(srcReg1, inst))
				LIVERANGE.erase(srcReg1);
			if (needToErase(srcReg2, inst))
				LIVERANGE.erase(srcReg2);
			if (needToErase(labelReg, inst))
				LIVERANGE.erase(labelReg);
		}
		else if (
			twoOpBranchInstSet.find(opCode) != twoOpBranchInstSet.end()
		) {
			string source = inst->getOperand(1);
			string label = inst->getOperand(2);
			string srcReg = getRegister(source);
			string labelReg = getRegister(label);
			parent->increaseUSES(srcReg);
			parent->increaseUSES(labelReg);
			if (needToErase(srcReg, inst))
				LIVERANGE.erase(srcReg);
			if (needToErase(labelReg, inst))
				LIVERANGE.erase(labelReg);
		}
		else if (
			oneOpBranchInstSet.find(opCode) != oneOpBranchInstSet.end() ||
			jumpInstSet.find(opCode) != jumpInstSet.end()
		) {
			string label = inst->getOperand(1);
			string labelReg = getRegister(label);
			if (needToErase(labelReg, inst))
				LIVERANGE.erase(labelReg);

			if (
				opCode.compare("jal") == 0 ||
				opCode.compare("jalr") == 0
			) {
				for (
					set<string>::iterator it = LIVERANGE.begin();
					it != LIVERANGE.end(); it++
				) {
					string reg = *it;
					addToInterferenceList(crossingRegSet, reg);
					/// Update the calls within live-range of a register
					parent->increaseCALLS(reg);
				}
			}
		}
	}
}

void BasicBlock::removeFromParent() {

}

void BasicBlock::eraseFromParent() {

}
