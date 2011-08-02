/*
 * Util.h
 *
 *  Created on: May 13, 2011
 *      Author: thanh
 */

#ifndef UTIL_H_
#define UTIL_H_

#include "Instruction.h"
#include "InstructionInfo.h"

/// Get the symbolic register identifier, if not a symbolic register, return 0
extern int getRegisterID(string operand);

extern int getRealRegisterID(string operand);

/// Get the register info from operand
extern string getRegister(string operand);

/// Check if an operand is a valid register name
extern bool isRegister(string operand);

/// Compute the order of two register names
/// -1 if s1 < s2
/// 0 if s1 = s2
/// 1 if s1 > s2
extern int compare(string s1, string s2);

extern string getStr(set<string> SET, string start);

extern bool isReg(string operand, string reg);

extern string getRealRegister(int regID);

extern string getSymbolicRegister(int regID);

extern int INFINITY;

#endif /* UTIL_H_ */
