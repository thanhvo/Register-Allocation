#ifndef FUNCTION_H
#define FUNCTION_H

#include "Module.h"
#include "Function.h"
#include "BasicBlock.h"
#include "Utils.h"
#include <cstring>
#include <vector>
#include <set>
#include <stack>
#include <iostream> // Debugging

using namespace std;

class BasicBlock;
class Module;

class Function {

	Module* parent;
	string name;
	string header;
	string content;
	string footer;

	string CFG;
	string stackAssignment;
	string interferenceInfo;

	void getCFGInfo();

	void initVarSets();

	/// Number of symbolic registers
	int numOfSymRegs;

	/// Interfering list for symbolic registers
	set<string>* interferenceList;

	/// Copy-connected list for symbolic registers
	set<string>* copyList;

	/// Coalesced register list for a single register
	set<string>* coalescedList;

	/// Count the number of symbolic registers are called, defined or used in
	/// their live range.
	int* CALLS;

	int* DEFS;

	int* USES;

	///set<int> freezedList;

	/// List of removed registers in the graph
	bool* removedList;

	/// List of frozen registers in the graph
	bool* frozenList;

	bool isRemoved(int regID);

	bool isGraphEmpty();

	bool isCallCrossing(string reg);

	bool isCopyConnected(string reg);

	/// Check if a symbolic register only copy connected to real registers
	bool isOnlyRealRegisterCopyConnected(string reg);

	bool isNoSpillRegister(string reg);

	bool isNoSpillPreferedPair (string reg1, string reg2);

	bool isNoSpillNonPreferedPair (string reg1, string reg2);

	int getDegree(string reg);

	int getPairDegree(string reg1, string reg2);

	/// Pair of register index and spill info
	/// true -> no-spill
	/// false -> may-spill
	stack< pair<int, bool> > allocatingStack;

	string* registerAssignment;

	int getLowestNoSpillRegister();

	pair<int,int> getLowestNoSpillPreferedPair();

	pair<int,int> getLowestNoSpillNonPreferedPair();

	int getLowestRealRegisterCopyConnectedID();

	int getLowestNonCallCrossing();

	int getLowestFreezedPreferredID();

	int getLowestFreezedNonPreferenceID();

	int getCost(int regID);

	int getLowestCostRegister();

	bool isNeighborAssigned(int regID, string reg);

	int getLowestNotAssignedRealRegister(int regID);

	int getFirstNotAssignedCallerSaved(int regID);

	int getFirstNotAssignedConditionedCallerSaved(int regID);

	int getFirstNotAssignedCalleeSaved(int regID);

	void assign(int regID, int assignedID);

	void spill(int regID);

	void removeRegisterFromGraph(int regID);

	void simplifyPreferred();

	bool simplifyCopy();

	bool simplifyNonCallCrossing();

	bool freeze(int regID);

	bool freezePreferred();

	bool freezeNonPreferred();

	void possibleSpill();

	void select();

	/// Coalesce two copy-connected registers, return true if we can coalesce
	bool coalesce(int regID1, int regID2);

	bool coalescePreferred();

	bool coalesceNonPreferred();

	void removeDeadRegisters();

public:

	typedef vector<BasicBlock*> BasicBlockListType;
	// List of basic blocks
	BasicBlockListType basicBlockList;

	Function() {
		numOfSymRegs = 0;
	}
	~Function() {}

	Module* getParent(){
		return parent;
	}

	void setParent ( Module* _parent) {
		parent = _parent;
	}

	void setName (string _name) {
		name = _name;
	}

	string getName () { return name;}

	int getNumOfSymRegs() {
		return numOfSymRegs;
	}

	void setNumOfSymRegs(int num) {
		numOfSymRegs = num;
	}

	void setHeader (string _header) {
		header = _header;
	}

	string getHeader () {
		return header;
	}

	void setFooter (string _footer) {
		footer = _footer;
	}

	string getFooter () {
		return footer;
	}

	void removeFromParent();

	void eraseFromParent();

	BasicBlockListType &getBasicBlockList() { return basicBlockList;}

	int getBBNum () {return basicBlockList.size();}

	void insertBasicBlock(BasicBlock* basicBlock);

	void generateCFG();

	void runLiveRangeAnalysis();

	void computeUEU();

	void computeREACH();

	void computeLIVE();

	void addToInterferenceList(int index, string reg);

	void removeFromInterferenceList(int index, string reg) {
		if (
			index > 0 &&
			interferenceList[index-1].find(reg) != interferenceList[index-1].end()
		)
			interferenceList[index-1].erase(reg);
	}

	void addToCopyList( int index, string reg) {
		copyList[index-1].insert(reg);
	}

	void increaseCALLS(string reg);

	void increaseDEFS(string reg);

	void increaseUSES(string reg);

	bool isInterfering( string destReg, string srcReg);

	bool inInterferenceList( int index, string reg) {
		return (interferenceList[index-1].find(reg) != interferenceList[index-1].end());
	}

	void addInterferenceGraphInfo();

	void updateCopyList();

	void updateInterferenceList();

	void constructInterferenceGraph();

	void allocateRegisters();

	BasicBlock* getBasicBlock (int id);

	void print(ostream &out);

};

#endif
