/*
 * Function.cpp
 *
 *  Created on: Apr 3, 2011
 *      Author: thanh
 */

#include <iostream>
#include <sstream>
#include <stdlib.h>
#include <set>
#include <queue>
#include <algorithm>
#include <assert.h>
#include "Function.h"
#include "Instruction.h"
#include "Tokenizer.h"
#include "Utils.h"

using namespace std;

void Function::insertBasicBlock( BasicBlock* basicBlock ) {
	basicBlockList.push_back(basicBlock);
	basicBlock->setParent(this);
}

BasicBlock* Function::getBasicBlock( int id ) {
	for (
		BasicBlockListType::iterator BB = basicBlockList.begin();
		BB < basicBlockList.end(); BB++
	) {
		BasicBlock* bb = *BB;
		if (bb->getID() == id )
			return bb;
	}
	return NULL;
}

void Function::getCFGInfo() {
	/// Only add CFG header for real function, i.e, including 1 or more BBs.
	if (getBBNum() == 0)
		return;
	/// Add CFG info to the end of function's header
	CFG = "#CFG\n";
	for (
		BasicBlockListType::iterator BB = basicBlockList.begin();
		BB < basicBlockList.end(); BB++
	) {
		BasicBlock* basicBlock = *BB;
		stringstream ss;
		ss << "#";
		ss << basicBlock->getID();
		/// List of next blocks'IDs
		int nextBBNum = basicBlock->getSuccessors().size();
		if (nextBBNum < 1)
			ss << "\n";
		else {
			int* nextIDs = new int[nextBBNum];
			int i = 0;
			for (
				set<BasicBlock*>::iterator iB = basicBlock->getSuccessors().begin();
				iB != basicBlock->getSuccessors().end(); iB++
			) {
				BasicBlock *nextBB = *iB;
				nextIDs[i] = nextBB->getID();
				i++;
			}
			// Sort the list of nextBBs
			for (int i = 0; i < nextBBNum; i++)
				for (int j = i+1; j < nextBBNum; j++) {
					if (nextIDs[i] > nextIDs[j]) {
						int tmp = nextIDs[i];
						nextIDs[i] = nextIDs[j];
						nextIDs[j] = tmp;
					}
				}
			for (int i = 0; i < nextBBNum; i++)
				ss << " " << nextIDs[i];
			ss << "\n";
		}
		CFG += ss.str();
	}
}

void Function::generateCFG() {
	for (
		BasicBlockListType::iterator BB = basicBlockList.begin();
		BB < basicBlockList.end(); BB++
	) {
			BasicBlock* basicBlock = *BB;
			/// FIXME: consider the dead label
			if (basicBlock->getHeader().find(".rdata") != string::npos) {
				BasicBlock* previousBlock = getBasicBlock(
						basicBlock->getID() -1
				);
				Tokenizer tokenizer(basicBlock->getHeader(), "\n");
				while (true) {
					tokenizer.NextToken();
					string line = tokenizer.GetToken();
					Tokenizer tk (line, " \t\r\n");
					tk.NextToken();
					string word = tk.GetToken();
					if (word.compare(".text") == 0)
						break;
					else if (word.compare(".word") == 0) {
						tk.NextToken();
						string label = tk.GetToken();
						for (
							BasicBlockListType::iterator iB = basicBlockList.begin();
							iB != basicBlockList.end(); iB++
						) {
							BasicBlock* bb = *iB;
							if (bb->getLabels().find(label) != string::npos) {
								previousBlock->insertNextBasicBlock( bb );
								bb->insertPreBasicBlock( previousBlock );
								break;
							}
						}
					}
				}

			}
			Instruction* brInstr = basicBlock->getTerminator();
			if (brInstr == NULL) {
				// Set the consequent BB to the list of next basic blocks
				BasicBlock* nextBB = getBasicBlock(basicBlock->getID() + 1);
				if (nextBB != NULL) {
					basicBlock->insertNextBasicBlock( nextBB );
					nextBB->insertPreBasicBlock( basicBlock );
				}
				continue;
			}

			string opCode = brInstr->getOpCode();
			// Jump instructions
			// Treat break as jump instructions
			string destination; // The target location
			if (
				opCode.compare("j") == 0 ||
				opCode.compare("jr") == 0 ||
				opCode.compare("jal") == 0 ||
				opCode.compare("jalr") == 0

			) {
				brInstr->setOperandNum( 1 );
				Tokenizer tokenizer( brInstr->getContent(), " ,\t\r\n" );
				tokenizer.NextToken(); // ignore the opCode
				tokenizer.NextToken();
				destination = tokenizer.GetToken();
				brInstr->setOperand( 1, destination );

				if (
					opCode.compare("jal") == 0 ||
					opCode.compare("jalr") == 0
				) {
					BasicBlock* nextBB = getBasicBlock(basicBlock->getID() + 1 );
					if (nextBB != NULL) {
						basicBlock->insertNextBasicBlock(nextBB);
						nextBB->insertPreBasicBlock( basicBlock );
					}
				}
			}
			// Branch instructions with 2 operands
			else if (opCode.compare("blez") == 0 ||
					opCode.compare("bgtz") == 0 ||
					opCode.compare("bltz") == 0 ||
					opCode.compare("bgez") == 0 ||
					opCode.compare("bltzal") == 0 ||
					opCode.compare("bgezal") == 0 ) {
				brInstr->setOperandNum(2);
				Tokenizer tokenizer( brInstr->getContent(), " ,\t\r\n" );
				tokenizer.NextToken(); // ignore the opCode
				// get operand 1
				tokenizer.NextToken();
				string operand = tokenizer.GetToken();
				brInstr->setOperand( 1, operand );
				// get operand 2
				tokenizer.NextToken();
				destination = tokenizer.GetToken();
				brInstr->setOperand( 2, destination );

				BasicBlock* nextBB = getBasicBlock(basicBlock->getID() + 1 );
				if (nextBB != NULL) {
					basicBlock->insertNextBasicBlock( nextBB );
					nextBB->insertPreBasicBlock( basicBlock );
				}

			}
			// Branch instructions with 3 operands
			else if (opCode.compare("beq") == 0 ||
					opCode.compare("bne") == 0 ) {
				brInstr->setOperandNum(3);
				Tokenizer tokenizer( brInstr->getContent(), " ,\t\r\n" );
				tokenizer.NextToken(); // ignore the opCode
				// get operand 1
				tokenizer.NextToken();
				string operand = tokenizer.GetToken();
				brInstr->setOperand( 1, operand );
				// get operand 2
				tokenizer.NextToken();
				operand = tokenizer.GetToken();
				brInstr->setOperand( 2, operand );
				// get operand 3
				tokenizer.NextToken();
				destination = tokenizer.GetToken();
				brInstr->setOperand( 3, destination );

				// Set the consequent BB to the list of next basic blocks
				BasicBlock* nextBB = getBasicBlock(basicBlock->getID() + 1);
				if (nextBB != NULL) {
					basicBlock->insertNextBasicBlock( nextBB );
					nextBB->insertPreBasicBlock( basicBlock );
				}
			}
			// Syscall or break instruction
			else if (
				opCode.compare("syscall") == 0 ||
				opCode.compare("break") == 0
			) {
				continue;
			}

			// Find the Basic block in destination
			/// Destination is a label
			if (destination.size() < 1)
				break;
			BasicBlock* nextBB = NULL;
			for (
				BasicBlockListType::iterator iB = basicBlockList.begin();
				iB != basicBlockList.end(); iB++
			) {
				BasicBlock* bb = *iB;

				string fullDestName = destination + ":";

				if (bb->getLabels().find(fullDestName) != string::npos) {
					basicBlock->insertNextBasicBlock( bb );
					bb->insertPreBasicBlock( basicBlock );
					break;
				}

				int length = destination.length();
				string newDest = destination.substr(0, length - 1);
				int value = atoi(newDest.c_str());
				stringstream ss;
				ss << value;
				if (ss.str().compare(newDest.c_str()) == 0) {
					fullDestName = newDest + ":";
					if (destination.at( length - 1 ) == 'f') {
						if (
							bb->getLabels().find(fullDestName) != string::npos &&
							bb->getID() > basicBlock->getID()
						) {
							basicBlock->insertNextBasicBlock( bb );
							bb->insertPreBasicBlock( basicBlock );
							break;
						}
					}
					else if (destination.at( length - 1 ) == 'b') {
						if (
							bb->getLabels().find(fullDestName) != string::npos &&
							bb->getID() <= basicBlock->getID()
						) {
							nextBB = bb;
						}
					}
				}
			}

			if (nextBB != NULL) {
				basicBlock->insertNextBasicBlock( nextBB );
				nextBB->insertPreBasicBlock( basicBlock );
			}
	}
	getCFGInfo();
}

/// Some set operation utilities
template <class T>
set<T> UNION(set<T>a, set<T> b) {
	set<T> c;
	set_union(
		a.begin(), a.end(), b.begin(), b.end(),
		insert_iterator<set<T> >(c, c.begin())
	);
	return c;
}

/// Some set operation utilities
template <class T>
set<T> DIFF(set<T>a, set<T> b) {
	set<T> c;
	set_difference(
		a.begin(), a.end(), b.begin(), b.end(),
		insert_iterator<set<T> >(c, c.begin())
	);
	return c;
}

/// Some set operation utilities
template <class T>
set<T> INTERSECTION(set<T>a, set<T>b) {
	set<T> c;
	set_intersection(
		a.begin(), a.end(), b.begin(), b.end(),
		insert_iterator<set<T> >(c, c.begin())
	);
	return c;
}

/// Some set operation utilities
template <class T>
bool EQUAL(set<T>a, set<T> b){
	set<T> c= UNION(a, b);
	return (a.size() == c.size());
}

void Function::runLiveRangeAnalysis() {
	computeUEU();
	computeREACH();
	computeLIVE();
	/// Print liveness info
	for (
		BasicBlockListType::iterator BB = basicBlockList.begin();
		BB < basicBlockList.end(); BB++
	) {
		BasicBlock* basicBlock = *BB;
		basicBlock->addLiveAnalysisInfo();
	}
}

void Function::computeREACH() {
	/// Compute GEN, KILL sets
	for (
		BasicBlockListType::iterator BB = basicBlockList.begin();
		BB < basicBlockList.end(); BB++
	) {
		BasicBlock* basicBlock = *BB;
		basicBlock->computeGENKILL();
		basicBlock->REACHOUT = basicBlock->GEN;
		/// Add default registers to the entry block
		if (basicBlock->getID() == 1) {
			basicBlock->REACHIN.insert(BasicBlock::r4);
			basicBlock->REACHIN.insert(BasicBlock::r5);
			basicBlock->REACHIN.insert(BasicBlock::r6);
			basicBlock->REACHIN.insert(BasicBlock::r7);
			basicBlock->REACHIN.insert(BasicBlock::r31);
		}
	}

	bool changed = true;

	/// Compute Upward exposed use UEU sets
	while (changed) {
		changed = false;
		for (
			BasicBlockListType::iterator BB = basicBlockList.begin();
			BB < basicBlockList.end(); BB++
		) {
			BasicBlock* basicBlock = *BB;
			set<Instruction*> oldREACHOUT = basicBlock->REACHOUT;
			set<Instruction*> a = DIFF(basicBlock->REACHIN, basicBlock->KILL);
			basicBlock->REACHOUT = UNION(basicBlock->GEN, a);
			if (!EQUAL(oldREACHOUT, basicBlock->REACHOUT))
				changed = true;
			for (
				set<BasicBlock*>::iterator iB = basicBlock->getPredecessors().begin();
				iB != basicBlock->getPredecessors().end(); iB++
			) {
				BasicBlock *nextBB = *iB;
				set<Instruction*> oldREACHIN = basicBlock->REACHIN;
				basicBlock->REACHIN = UNION(basicBlock->REACHIN, nextBB->REACHOUT);
				if (!EQUAL(oldREACHIN, basicBlock->REACHIN))
					changed = true;
			}
		}
	}
}

void Function::computeUEU() {
	/// Compute USE and DEF sets
	for (
		BasicBlockListType::iterator BB = basicBlockList.begin();
		BB < basicBlockList.end(); BB++
	) {
		BasicBlock* basicBlock = *BB;
		basicBlock->initVarSets();
	}

	bool changed = true;

	/// Compute Upward exposed use UEU sets
	while (changed) {
		changed = false;
		for (
			BasicBlockListType::iterator BB = basicBlockList.begin();
			BB < basicBlockList.end(); BB++
		) {
			BasicBlock* basicBlock = *BB;
			set<string> oldUEUIN = basicBlock->UEUIN;
			set<string> a = DIFF(basicBlock->UEUOUT, basicBlock->DEF);
			basicBlock->UEUIN = UNION(basicBlock->USE, a);
			if (!EQUAL(oldUEUIN, basicBlock->UEUIN))
				changed = true;
			for (
				set<BasicBlock*>::iterator iB = basicBlock->getSuccessors().begin();
				iB != basicBlock->getSuccessors().end(); iB++
			) {
				BasicBlock *nextBB = *iB;
				set<string> oldUEUOUT = basicBlock->UEUOUT;
				basicBlock->UEUOUT = UNION(basicBlock->UEUOUT, nextBB->UEUIN);
				if (!EQUAL(oldUEUOUT, basicBlock->UEUOUT))
					changed = true;
			}
		}
	}
}

void Function::computeLIVE() {
	/// Compute LIVEIN
	for (
		BasicBlockListType::iterator BB = basicBlockList.begin();
		BB < basicBlockList.end(); BB++
	) {
		BasicBlock* basicBlock = *BB;
		for (
			set<Instruction*>::iterator II = basicBlock->REACHIN.begin();
			II != basicBlock->REACHIN.end(); II++
		) {
			Instruction* inst = *II;
			basicBlock->LIVERANGEIN.insert(inst->getOperand(1));
		}
		basicBlock->LIVERANGEIN = INTERSECTION(basicBlock->LIVERANGEIN, basicBlock->UEUIN);
		basicBlock->LIVERANGEIN = DIFF(basicBlock->LIVERANGEIN, basicBlock->FIRSTDEF);
		//Do not include $0 register, $0 always stores 0 value
		basicBlock->LIVERANGEIN.erase("$0");
	}
}

/// Convert the interference graph to a string
void Function::addInterferenceGraphInfo() {
	interferenceInfo = "#Interference Graph\n";
	for (int i = 1; i <= numOfSymRegs; i++) {
		/// Do not add info of dead registers
		if (removedList[i - 1])
			continue;
		stringstream ss;
		ss << "#  s" << i << endl;
		interferenceInfo += ss.str();
		if (interferenceList[i-1].size() > 0) {
			string interferenceStr = getStr(interferenceList[i-1], "#!");
			interferenceInfo += interferenceStr;
		}
		if (copyList[i-1].size() > 0) {
			string copyStr = getStr(copyList[i-1], "#=");
			interferenceInfo += copyStr;
		}
	}
}

bool Function::isInterfering(string destReg, string srcReg) {
	int destID = getRegisterID(destReg);
	if (
		destID > 0 &&
		interferenceList[destID-1].find(srcReg) != interferenceList[destID-1].end()
	)
		return true;
	else
		return false;
}

void Function::addToInterferenceList(int index, string reg) {
	if (isRegister(reg))
		interferenceList[index-1].insert(reg);
}

void Function::updateCopyList() {
	for (int i = 0; i < numOfSymRegs; i++) {
		copyList[i] = DIFF(copyList[i], interferenceList[i]);
		copyList[i].erase("$0");
		///copyList[i].erase("$1");
	}
}

/// Remove real register $1 from the interference graph
void Function::updateInterferenceList() {
	for (int i = 0; i < numOfSymRegs; i++) {
		interferenceList[i].erase("$1");
	}
}

/// Construct interference graph
void Function::constructInterferenceGraph() {
	interferenceList = new set<string>[numOfSymRegs];
	coalescedList = new set<string>[numOfSymRegs];
	copyList = new set<string>[numOfSymRegs];
	CALLS = new int[numOfSymRegs];
	DEFS = new int[numOfSymRegs];
	USES = new int[numOfSymRegs];
	registerAssignment = new string[numOfSymRegs];

	for ( int i = 0; i< numOfSymRegs; i++) {
		CALLS[i] = 0;
		DEFS[i] = 0;
		USES[i] = 0;
	}

	for (
		BasicBlockListType::iterator BB = basicBlockList.begin();
		BB < basicBlockList.end(); BB++
	) {
		BasicBlock* basicBlock = *BB;
		basicBlock->constructInterferenceGraph();
	}
	updateCopyList();
	updateInterferenceList();
	removeDeadRegisters();
	addInterferenceGraphInfo();
}

/// Check if a register cross a call
bool Function::isCallCrossing(string reg) {
	int regID = getRegisterID(reg);
	if (regID < 1)
		return false;
	else if (CALLS[regID - 1] > 0)
		return true;
	else
		return false;
}

/// Check if a register has a copy connected register
bool Function::isCopyConnected(string reg) {
	int regID = getRegisterID(reg);
	if (regID < 1)
		return false;
	else {
		if (copyList[regID-1].size() > 0)
			return true;
		else
			return false;
	}
}

//// Check if a symbolic register is only copy connected to real registers
bool Function::isOnlyRealRegisterCopyConnected(string reg) {
	int regID = getRegisterID(reg);
	if (regID < 1)
		return false;
	else {
		if (copyList[regID - 1].size() < 1)
			return false;
		else {
			for (
				set<string>::iterator it = copyList[regID - 1].begin();
				it != copyList[regID - 1].end(); it++
			) {
				string copyReg = *it;
				if (copyReg.at(0) != '$')
					return false;
			}
			return true;
		}
	}
}

/// Check if can simplify a register with a preferred allocation
bool Function::isNoSpillRegister(string reg) {
	if (
		(!isCallCrossing(reg) && !isCopyConnected(reg) && getDegree(reg) < 17) ||
		(isCallCrossing(reg) && !isCopyConnected(reg) && getDegree(reg) < 25)
	)
		return true;
	else
		return false;
}

/// Check if a pair of registers can be coalesced with a preferred allocation
bool Function::isNoSpillPreferedPair(string reg1, string reg2){
	if (
		(!isCallCrossing(reg1) && !isCallCrossing(reg2) && getPairDegree(reg1, reg2) < 17) ||
		((isCallCrossing(reg1) || isCallCrossing(reg2)) && getPairDegree(reg1, reg2) < 25)
	)
		return true;
	else
		return false;
}

bool Function::isNoSpillNonPreferedPair(string reg1, string reg2){
	if (
		(!isCallCrossing(reg1) && !isCallCrossing(reg2) && getPairDegree(reg1, reg2) < 25)
	)
		return true;
	else
		return false;
}

/// Check if a register is removed from interference graph
bool Function::isRemoved(int regID) {
	return removedList[regID -1];
}

/// Check if the interference graph is empty, that is, all nodes are removed
/// from graph
bool Function::isGraphEmpty() {
	for (int i = 0; i < numOfSymRegs; i++) {
		if (!removedList[i])
			return false;
	}
	return true;
}

/// Degree of a register in the interference graph
int Function::getDegree(string reg){
	int regID = getRegisterID(reg);
	if (regID < 1)
		return 0;
	else {
		return interferenceList[regID - 1].size();
	}
}

/// Degree of pair of coalesced registers in the interference graph
int Function::getPairDegree(string reg1, string reg2) {
	int regID1 = getRegisterID(reg1);
	int regID2 = getRegisterID(reg2);
	if (regID1 < 1 || regID2 <1)
		return 0;
	set<string> coalescedSet = UNION(
		interferenceList[regID1-1], interferenceList[regID2 -1]
    );
	return coalescedSet.size();
}

/// Get the lowest register that can be assigned to a real register
int Function::getLowestNoSpillRegister() {
	for (int i = 1; i <= numOfSymRegs; i++ ) {
		if (isRemoved(i))
			continue;
		string reg = getSymbolicRegister(i);
		if (isNoSpillRegister(reg))
			return i;
	}
	return 0;
}

/// Get a lowest pair of registers with a preferred allocation to coalesce
pair<int,int> Function::getLowestNoSpillPreferedPair() {
	for (int i = 1; i <= numOfSymRegs; i++) {
		if (isRemoved(i))
			continue;
		string reg1 = getSymbolicRegister(i);
		int min = INFINITY; // set a large number for min index
		for (
			set<string>::iterator it = copyList[i - 1].begin();
			it != copyList[i - 1].end(); it++
		) {
			string reg2 = *it;
			int j = getRegisterID(reg2);
			if (j <= i || j >= min)
				continue;
			if (isRemoved(j))
				continue;
			if (isNoSpillPreferedPair(reg1, reg2))
				min = j;
		}
		if (min < INFINITY)
			return make_pair(i, min);
	}
	return make_pair(0, 0);
}

/// Get a lowest pair of registers with a non-preferred allocation to coalesce
pair<int,int> Function::getLowestNoSpillNonPreferedPair() {
	for (int i = 1; i <= numOfSymRegs; i++) {
		if (isRemoved(i))
			continue;
		string reg1 = getSymbolicRegister(i);
		int min = INFINITY; // set a large number for min index
		for (
			set<string>::iterator it = copyList[i - 1].begin();
			it != copyList[i - 1].end(); it++
		) {
			string reg2 = *it;
			int j = getRegisterID(reg2);
			if (j <= i || j >= min)
				continue;
			if (isRemoved(j))
				continue;
			if (isNoSpillNonPreferedPair(reg1, reg2))
				min = j;
		}
		if (min < INFINITY)
			return make_pair(i, min);
	}
	return make_pair(0, 0);
}

/// Get the lowest symbolic register that is copy connected to a real register
int Function::getLowestRealRegisterCopyConnectedID() {
	for (int i = 1; i <= numOfSymRegs; i++) {
		if (isRemoved(i))
			continue;
		string reg = getSymbolicRegister(i);
		if (isOnlyRealRegisterCopyConnected(reg) && getDegree(reg) < 17)
			return i;
	}
	return 0;
}

int Function::getLowestNonCallCrossing() {
	for (int i = 1; i <= numOfSymRegs; i++) {
		if (isRemoved(i))
			continue;
		string reg = getSymbolicRegister(i);
		if (!isCallCrossing(reg) && !isCopyConnected(reg) && getDegree(reg) < 25)
			return i;
	}
	return 0;
}

/// Get the symbolic lowest register ID with a preferred allocation
int Function::getLowestFreezedPreferredID() {
	for (int i = 1; i <= numOfSymRegs; i++) {
		if (isRemoved(i))
			continue;
		if (frozenList[i])
			continue;
		string reg = getSymbolicRegister(i);
		if (isCopyConnected(reg) && !isOnlyRealRegisterCopyConnected(reg)) {
			if (
				(!isCallCrossing(reg) && getDegree(reg) < 17) ||
				(isCallCrossing(reg) && getDegree(reg) < 25)
			) {
				return i;
			}
		}
	}
	return 0;
}

/// Get the symbolic lowest register ID with a non-preferred allocation
int Function::getLowestFreezedNonPreferenceID() {
	for (int i = 1; i <= numOfSymRegs; i++) {
		if (isRemoved(i))
			continue;
		if (frozenList[i])
			continue;
		string reg = getSymbolicRegister(i);
		if (isCopyConnected(reg) && !isOnlyRealRegisterCopyConnected(reg)) {
			if (
				!isCallCrossing(reg) && getDegree(reg) < 27
			) {
				return i;
			}
		}
	}
	return 0;
}

/// Remove a register from interference graph,
/// update interference list and copy list
void Function::removeRegisterFromGraph(int regID) {
	if (regID < 1)
		return;
	string reg = getSymbolicRegister(regID);
	removedList[regID - 1] = true;
	interferenceList[regID -1].clear();
	copyList[regID - 1].clear();
	for (int i = 1; i <= numOfSymRegs; i++) {
		interferenceList[i-1].erase(reg);
		copyList[i -1].erase(reg);
	}
}

/// Simplify symbolic registers with a preferred
void Function::simplifyPreferred() {
	while (true) {
		int lowest = getLowestNoSpillRegister();
		if (lowest > 0) {
			allocatingStack.push(make_pair(lowest, true));
			removeRegisterFromGraph(lowest);
		} else
			break;
	}
}

/// Coalesce two symbolic registers
bool Function::coalesce(int regID1, int regID2) {
	assert(regID1 < regID2 && "The coalesced registers are not in order");
	if (regID1 < 1 || regID2 < 1 )
		return false;

	string reg1 = getSymbolicRegister(regID1);
	string reg2 = getSymbolicRegister(regID2);

	coalescedList[regID1 -1] = UNION(
		coalescedList[regID1 -1], coalescedList[regID2 -1]
	);

	coalescedList[regID1 -1].insert(reg2);
	coalescedList[regID2 -1].clear();

	interferenceList[regID1 -1] = UNION(
		interferenceList[regID1 -1], interferenceList[regID2 -1]
	);

	copyList[regID1 - 1] = UNION(copyList[regID1 - 1], copyList[regID2 - 1]);
	copyList[regID1 - 1].erase(reg1);
	coalescedList[regID1 - 1].erase(reg1);

	/// Remove real registers from coalesced list
	for(
		set<string>::iterator it = coalescedList[regID1 - 1].begin();
		it != coalescedList[regID1 - 1].end(); it++
	) {
		string coalescedReg = *it;
		if (getRealRegisterID(coalescedReg) > 0)
			coalescedList[regID1 - 1].erase(coalescedReg);
	}

	/// We can do this because regID1 and regID2 do not interfere
	CALLS[regID1 - 1] += CALLS[regID2 - 1];
	USES[regID1 - 1] += USES[regID2 - 1];
	DEFS[regID1 - 1] += DEFS[regID2 -1];

	/// Update interference list and copy list of each register
	for (int i = 1; i <= numOfSymRegs; i++) {
		if (i == regID1 || i == regID2)
			continue;
		if (interferenceList[i - 1].find(reg2) != interferenceList[i-1].end()) {
			interferenceList[i-1].erase(reg2);
			interferenceList[i-1].insert(reg1);
		}
		if (copyList[i - 1].find(reg2) != copyList[i - 1].end()) {
			copyList[i - 1].erase(reg2);
			copyList[i - 1].insert(reg1);
		}
	}
	/// Update the info of each register in interferenceList
	for (
		set<string>::iterator it = interferenceList[regID1 - 1].begin();
		it != interferenceList[regID1 - 1].end(); it++
	) {
		string ifReg = *it;
		int ifID = getRegisterID(ifReg);
		if (ifID < 1)
			continue;
		interferenceList[ifID - 1].insert(getSymbolicRegister(regID1));
	}

	copyList[regID1 -1].erase(reg2);
	copyList[regID1 - 1] = DIFF(
		copyList[regID1 - 1], interferenceList[regID1 - 1]
	);
	removedList[regID2 - 1] = true;

	return true;
}

/// Coalesce symbolic registers with a preferred allocation
bool Function::coalescePreferred() {
	bool success = false;
	while (true) {
		pair<int, int> coalescedPair = getLowestNoSpillPreferedPair();
		int i = coalescedPair.first;
		int j = coalescedPair.second;
		if (i < 1)
			break;
		coalesce(i, j);
		success = true;
	}
	return success;
}

/// Coalesce symbolic registers with a non-preferred allocation
bool Function::coalesceNonPreferred() {
	bool success = false;
	while (true) {
		pair<int, int> coalescedPair = getLowestNoSpillNonPreferedPair();
		int i = coalescedPair.first;
		int j = coalescedPair.second;
		if (i < 1)
			break;
		coalesce(i, j);
		success = true;
	}
	return success;
}

/// Simplify symbolic registers with a preferred allocation and a real-register
/// copy connection
bool Function::simplifyCopy() {
	int lowestRegID = getLowestRealRegisterCopyConnectedID();
	if (lowestRegID < 1)
		return false;
	allocatingStack.push(make_pair(lowestRegID, true));
	removeRegisterFromGraph(lowestRegID);
	return true;
}

/// Simplify a non call-crossing symbolic register relying on a non-preferred
/// callee-saved real register
bool Function::simplifyNonCallCrossing() {
	int lowest = getLowestNonCallCrossing();
	if ( lowest < 1)
		return false;
	allocatingStack.push(make_pair(lowest, true));
	removeRegisterFromGraph(lowest);
	return true;
}

/// Freeze copy (copies) connecting the register regID
bool Function::freeze(int regID) {
	if (copyList[regID - 1].empty())
		return false;
	bool isFreezed = false;
	for (
		set<string>::iterator it = copyList[regID-1].begin();
		it != copyList[regID-1].end(); it++
	) {
		string copiedReg = *it;
		int copiedID = getRegisterID(copiedReg);
		if (copiedID < 1)
			continue;
		copyList[copiedID -1].erase(getSymbolicRegister(regID));
		copyList[regID - 1].erase(copiedReg);
		isFreezed = true;
	}
	if (isFreezed)
		frozenList[regID - 1] = true;
	return isFreezed;
}

/// Free a symbolic register with a preferred allocation
bool Function::freezePreferred() {
	int freezedID = getLowestFreezedPreferredID();
	if (freezedID < 1)
		return false;
	return freeze(freezedID);
}

/// Freeze a symbolic register with a non-preferred allocation
bool Function::freezeNonPreferred() {
	int freezedID = getLowestFreezedNonPreferenceID();
	if (freezedID < 1)
		return false;
	return freeze(freezedID);
}

void Function::increaseCALLS(string reg) {
	int regID = getRegisterID(reg);
	if (regID > 0)
		CALLS[regID - 1]++;
}

void Function::increaseDEFS(string reg) {
	int regID = getRegisterID(reg);
	if (regID > 0)
		DEFS[regID - 1]++;
}

void Function::increaseUSES(string reg) {
	int regID = getRegisterID(reg);
	if (regID > 0)
		USES[regID - 1]++;
}

/// Get cost of register
int Function::getCost(int regID) {
	if (regID < 1)
		return 0;
	string reg = getSymbolicRegister(regID);
	if (isCallCrossing(reg) && getDegree(reg) < 25) {
		if (2 * CALLS[regID - 1] < (USES[regID - 1] + DEFS[regID - 1]))
			return 2*CALLS[regID - 1];
		else
			return (USES[regID - 1] + DEFS[regID - 1]);
	} else
		return (USES[regID - 1] + DEFS[regID - 1]);
}

/// Get the register with the lowest cost
int Function::getLowestCostRegister() {
	int minCost = INFINITY; /// Assign to a very big number
	int min = 0;
	for (int i = 1 ; i <= numOfSymRegs; i++) {
		if (isRemoved(i))
			continue;
		if (getCost(i) < minCost) {
			minCost = getCost(i);
			min = i;
		}
	}
	return min;
}

/// Check if a real register is assigned to a neighbor of a given register
bool Function::isNeighborAssigned(int regID, string reg) {
	for (
		set<string>::iterator it = interferenceList[regID - 1].begin();
		it != interferenceList[regID - 1].end(); it++
	) {
		string neighborReg = *it;
		if (neighborReg.at(0) == 's') {
			int neighborID = getRegisterID(neighborReg);
			assert (neighborID > 0 && "Neighbor register should be possitive");
			if (registerAssignment[neighborID - 1].compare(reg.c_str()) == 0)
				return true;
		}
	}
	return false;
}

/// Get the lowest real register that can be assigned to the symbolic register
/// with given ID
int Function::getLowestNotAssignedRealRegister(int regID) {
	if (regID < 1)
		return -1;
	if (copyList[regID - 1].empty())
		return -1;
	int min = 32;

	for (
		set<string>::iterator it = copyList[regID - 1].begin();
		it != copyList[regID - 1].end(); it++
	) {
		string copiedReg = *it;
		if (copiedReg.at(0) == '$') {
			if (!isNeighborAssigned(regID, copiedReg)) {
				int copiedID = getRealRegisterID(copiedReg);
				if (copiedID < min && copiedID > 0)
					min = copiedID;
			}
		}
	}
	if (min == 32)
		return -1;
	else
		return min;
}

/// Find the first caller-register that is not assigned to a neighbor of S with
/// heuristics
int Function::getFirstNotAssignedConditionedCallerSaved(int regID) {
	if (regID < 1)
		return -1;
	for (int i = 0; i < 17; i++) {
		string realReg = callerSavedRegisters[i];
		if (
			!isNeighborAssigned(regID, realReg) &&
			2*CALLS[regID -1] < (DEFS[regID - 1] + USES[regID -1])
		){
			return getRealRegisterID(realReg);
		}
	}
	return -1;
}

/// Find the first caller-register that is not assigned to a neighbor of S
int Function::getFirstNotAssignedCallerSaved(int regID) {
	if (regID < 1)
		return -1;
	for (int i = 0; i < 17; i++) {
		string realReg = callerSavedRegisters[i];
		if (interferenceList[regID - 1].find(realReg) !=
				interferenceList[regID - 1].end())
			continue;
		if (!isNeighborAssigned(regID, realReg)) {
			return getRealRegisterID(realReg);
		}
	}
	return -1;
}

/// Find the first callee-saved register that is not assigned to a neighbor of
/// a given register
int Function::getFirstNotAssignedCalleeSaved(int regID) {
	if (regID < 1)
		return -1;
	for (int i = 0; i < 8; i++) {
		string realReg = calleeSavedRegisters[i];
		if (interferenceList[regID - 1].find(realReg) !=
				interferenceList[regID - 1].end())
			continue;
		if (!isNeighborAssigned(regID, realReg)) {
			return getRealRegisterID(realReg);
		}
	}
	return -1;
}

/// Add possible spill registers to the stack
void Function::possibleSpill() {
	int minReg = getLowestCostRegister();
	if (minReg < 1)
		return;
	allocatingStack.push(make_pair(minReg, false));
	removeRegisterFromGraph(minReg);
}

/// Assign a symbolic register to a given real register
void Function::assign(int regID, int assignedID) {
	string assignedReg = getRealRegister(assignedID);
	registerAssignment[regID - 1] = assignedReg;
	set<string> assignementSet = coalescedList[regID - 1];
	assignementSet.insert(getSymbolicRegister(regID));
	string assignmentStr = getStr(assignementSet,"#");
	assignmentStr = assignmentStr.substr(0, assignmentStr.length() - 1);
	assignmentStr += assignedReg;
	assignmentStr += "\n";
	stackAssignment += assignmentStr;
}

void Function::spill(int regID) {
	registerAssignment[regID - 1] = "spill";
	stringstream ss;
	ss << "# s" << regID << " " << "spill" << "\n";
	stackAssignment += ss.str();
}

/// Assign the real registers for symbolic registers in stack order
void Function::select() {
	stackAssignment = "#Register Allocation Stack\n";
	while (!allocatingStack.empty()) {
		pair<int,bool> regPair = allocatingStack.top();
		allocatingStack.pop();
		int regID = regPair.first;
		string reg = getSymbolicRegister(regID);
		if (!isCallCrossing(reg)) {
			int assignedID = getLowestNotAssignedRealRegister(regID);
			if (assignedID > 0) {
				assign(regID, assignedID);
			} else {
				assignedID = getFirstNotAssignedCallerSaved(regID);
				if (assignedID > 0) {
					assign(regID, assignedID);
				} else {
					assignedID = getFirstNotAssignedCalleeSaved(regID);
					if (assignedID > 0) {
						assign(regID, assignedID);
					} else {
						spill(regID);
					}
				}
			}
		} else {
			int assignedID = getFirstNotAssignedCalleeSaved(regID);
			if (assignedID >= 0) {
				assign(regID, assignedID);
			} else {
				assignedID = getFirstNotAssignedConditionedCallerSaved(regID);
				if (assignedID >= 0) {
					assign(regID, assignedID);
				} else {
					spill(regID);
				}
			}
		}
	}
}

/// Remove all dead registers from the graph
void Function::removeDeadRegisters() {
	removedList = new bool[numOfSymRegs];
	for (int i = 1; i <= numOfSymRegs; i++) {
		if ( (USES[i - 1] + CALLS[i - 1] + DEFS[i - 1]) < 1) {
			removedList[i - 1] = true;
			for (
				set<string>::iterator it = copyList[i - 1].begin();
				it != copyList[i - 1].end(); it++
			) {
				string copiedReg = *it;
				int copiedID = getRegisterID(copiedReg);
				if (copiedID > 0)
					copyList[copiedID - 1].erase(getSymbolicRegister(i));
			}
			copyList[i - 1].clear();
		} else
			removedList[i - 1] = false;
	}
}

/// Allocate and assign real registers to symbolic registers
void Function::allocateRegisters() {
	/// Save the interference graph and copy list
	set<string>* originalInterferenceList = new set<string>[numOfSymRegs];
	set<string>* originalCopyList = new set<string>[numOfSymRegs];
	frozenList = new bool[numOfSymRegs];

	for (int i = 0 ; i < numOfSymRegs; i++ ) {
		originalInterferenceList[i] = interferenceList[i];
		originalCopyList[i] = copyList[i];
		frozenList[i] = false;
	}

	while (!isGraphEmpty()) {
		simplifyPreferred();
		if (coalescePreferred())
			continue;
		if (simplifyCopy())
			continue;
		if (simplifyNonCallCrossing())
			continue;
		if (coalesceNonPreferred())
			continue;
		if (freezePreferred())
			continue;
		if (freezeNonPreferred())
			continue;
		possibleSpill();
	}
	/// Restore the interference list and copy list
	for (int i = 0 ; i < numOfSymRegs; i++ ) {
		interferenceList[i] = originalInterferenceList[i];
		copyList[i] = originalCopyList[i];
	}

	/// Update interference list and copy list based on coalesced list
	for (int i = 0 ; i < numOfSymRegs; i++ ) {
		if (!coalescedList[i].empty()) {
			string reg = getSymbolicRegister(i + 1);
			/// Add interference list of coalesced registers to the current interference list
			for (
				set<string>::iterator it = coalescedList[i].begin();
				it != coalescedList[i].end(); it++
			) {
				string coalescedReg = *it;
				int coalescedRegID = getRegisterID(coalescedReg);
				interferenceList[i] = UNION(
					interferenceList[i], interferenceList[coalescedRegID -1]
				);
				copyList[i] = UNION(copyList[i], copyList[coalescedRegID - 1]);
			}
			interferenceList[i].erase(reg);
			/// Remove coalescedList from the each interference list
			for (
				set<string>::iterator it = interferenceList[i].begin();
				it != interferenceList[i].end(); it++
			) {
				string ifReg = *it;
				int regID = getRegisterID(ifReg);
				if (regID < 1)
					continue;
				if (regID == (i + 1))
					continue;
				interferenceList[regID -1].insert(reg);
				interferenceList[regID - 1] = DIFF(
					interferenceList[regID - 1], coalescedList[i]
				);

			}
			copyList[i] = DIFF(
				copyList[i], interferenceList[i]
			);
		}
	}

	/// Update the copy lists and interference lists with info of the frozen list
	for (int i = 0; i < numOfSymRegs; i++) {
		if (frozenList[i]) {
			freeze(i + 1);
		}
	}

	/// Assign the registers in the stack to real registers
	select();
}

/// Print the function to a out stream
void Function::print (ostream &out ) {
	if (basicBlockList.size() > 0) {
		header += stackAssignment;
		header += interferenceInfo;
		header += CFG;
	}
	out << header;
	for (
		BasicBlockListType::iterator BB = basicBlockList.begin();
		BB < basicBlockList.end(); BB++
	) {
		BasicBlock* basicBlock = *BB;
		basicBlock->print(out);
	}
	out << footer;
}
