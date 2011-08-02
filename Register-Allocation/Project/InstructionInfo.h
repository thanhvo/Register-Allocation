/*
 * InstructionInfo.h
 *
 *  Created on: Apr 22, 2011
 *      Author: thanh
 */

#ifndef INSTRUCTIONINFO_H_
#define INSTRUCTIONINFO_H_

#include <string>
#include <set>

using namespace std;

extern set<string> loadInstSet;

extern set<string> storeInstSet;

extern string conditionalTrapInsts;

extern set<string> absNegateInstSet;

/// Arithmetic instructions with three operands
extern set<string> arithmeticInstSet;

extern set<string> twoOpArithmeticInstSet;

extern set<string> threeOpBranchInstSet;

extern set<string> twoOpBranchInstSet;

extern set<string> oneOpBranchInstSet;

/// Move instructions
extern set<string> moveInstSet;

extern set<string> jumpInstSet;

extern set<string> crossingRegSet;

extern string callerSavedRegisters[];

extern string calleeSavedRegisters[];

#endif /* INSTRUCTIONINFO_H_ */
