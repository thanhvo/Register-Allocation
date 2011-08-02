#ifndef BBLOCK_H
#define BBLOCK_H

#include "Instruction.h"
#include "Function.h"
#include <string>
#include <vector>
#include <set>

using namespace std;

class Instruction;
class RealRegister;
class Function;

class BasicBlock {

	Function* parent;

	// The string containing the whole content of the basic block
	string content;

	typedef vector<Instruction*> InstListType;
	// List of instructions
	InstListType instList;

	int id;

	// The branch instruction
	Instruction *terminator;

	string header;

	typedef set<BasicBlock*> BasicBlockListType;

	vector<string> labelList; // List of label the basic block contains

	// List of successors in control flow graph
	BasicBlockListType postBlocks;

	// List of predecessors in constrol flow graph
	BasicBlockListType preBlocks;

	void updateUSE(string source);

	void updateDEF(string destination);

	bool inGEN(string operand);

	Instruction* findInGEN (string firstOperand);

	/// Check if an instruction is the last use of an register in the basic block
	bool isLastUse(string reg, Instruction* I);

	/// Return 0 if needed to erase
	/// 1 if there is new definition in the basic block
	/// 2 if there is no new definition in the basic block but reg not in UEUOUT
	bool needToErase(string reg, Instruction* I);

	bool needToInsert(string reg, Instruction* I);

	void addToInterferenceList(	set<string> LIVERANGE, string destinationReg );

	void addToCopyList(string destReg, string addReg);

public:
	// Set of upward exposed variables
	set<string> USE;

	// Set of generated definitions
	set<string> DEF;

	// Set of first definitions without no use from the entry to the definition
	set<string> FIRSTDEF;

	// Set of upward exposed use variables at the entry
	set<string> UEUIN;

	// Set of upward exposed use variables at the exit
	set<string> UEUOUT;

	// Set of GEN instructions
	set<Instruction*> GEN;

	// set of KILL instructions
	set<Instruction*> KILL;

	// set of reaching definitions
	set<Instruction*> REACHIN;

	set<Instruction*> REACHOUT;

	// LIVE sets
	set<string> LIVERANGEIN;

	set<string> LIVERANGEOUT;

	BasicBlock (): header("") {
		terminator = NULL;
	}
	~BasicBlock () {}

	Function* getParent(){
		return parent;
	}

	void setParent ( Function* _parent) {
		parent = _parent;
	}

	void setHeader (string _header) { header = _header;}

	string getHeader () {return header;}

	int getID() { return id;}

	void setID (int _id);

	Instruction* getTerminator() { return terminator;}

	void setTerminator(Instruction* _terminator) {terminator = _terminator;}

	string getContent() {return content;}

	void setContent(string _content) {content = _content;}

	void removeFromParent();

	void eraseFromParent();

	void insertInst(Instruction *inst);

	InstListType &getInstList() { return instList;}

	BasicBlockListType &getSuccessors() { return postBlocks;}

	BasicBlockListType &getPredecessors() { return preBlocks;}

	vector<string> &getLabelList() {return labelList;}

	string getLabels();

	void insertNextBasicBlock (BasicBlock *nextBB);

	void insertPreBasicBlock (BasicBlock *nextBB);

	// Initialize variable sets for each basic block
	void initVarSets ();

	void computeGENKILL();

	void addLiveAnalysisInfo();

	void constructInterferenceGraph();

	void print(ostream &out);

	/// List of real registers;
	static RealRegister* r2;
	static RealRegister* r4;
	static RealRegister* r5;
	static RealRegister* r6;
	static RealRegister* r7;
	static RealRegister* r31;
};

#endif
