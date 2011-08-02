/*
 * Util.cpp
 *
 *  Created on: May 13, 2011
 *      Author: thanh
 */
#include <stdlib.h>
#include <sstream>
#include "Utils.h"

/// Get the symbolic register identifier, if not a symbolic register, return 0
int getRegisterID(string operand) {
	if (operand.size() < 1)
		return 0;
	if (operand.at(0) == 's') {
		int length = operand.length();
		string operandID = operand.substr(1, length);
		int value = atoi(operandID.c_str());
		stringstream ss;
		ss << value;
		if (ss.str().compare(operandID.c_str()) == 0)
			return value;
		else
			return 0;
	}
	return 0;
}

/// Get the symbolic register identifier, if not a symbolic register, return 0
int getRealRegisterID(string operand) {
	if (operand.size() < 1)
		return 0;
	if (operand.at(0) == '$') {
		int length = operand.length();
		string operandID = operand.substr(1, length);
		int value = atoi(operandID.c_str());
		stringstream ss;
		ss << value;
		if (ss.str().compare(operandID.c_str()) == 0)
			return value;
		else
			return 0;
	}
	return 0;
}

/// Get the register info from operand
string getRegister(string operand) {
	int length = operand.size();
	if(length < 1)
		return NULL;
	if(operand.at(length - 1) == ')') {
		int start = 0;
		for (int i = length-1; i >= 0; i--) {
			if (operand.at(i) == '(') {
				start = i;
				break;
			}
		}
		string reg = operand.substr(start + 1, length - start - 2);
		return reg;
	} else
		return operand;
}

/// Check if an operand is a valid register name
bool isRegister(string operand) {
	if (operand.size() < 1)
		return false;
	if (operand.at(0) == 's' || operand.at(0) == '$') {
		int length = operand.length();
		string operandID = operand.substr(1, length);
		int value = atoi(operandID.c_str());
		stringstream ss;
		ss << value;
		if (ss.str().compare(operandID.c_str()) == 0)
			return true;
	}
	return false;
}

/// Compute the order of two register names
/// -1 if s1 < s2
/// 0 if s1 = s2
/// 1 if s1 > s2
int compare(string s1, string s2) {
	int length1 = s1.length();
	string sID1 = s1.substr(1, length1);
	int ID1 = atoi(sID1.c_str());

	int length2 = s2.length();
	string sID2 = s2.substr(1, length2);
	int ID2 = atoi(sID2.c_str());

	if (s1.at(0) == '$') {
		if (s2.at(0) == '$') {
			if (ID1 < ID2)
				return -1;
			else if (ID1 == ID2)
				return 0;
			else
				return 1;
		} else
			return -1;
	} else {
		if (s2.at(0) == '$')
			return 1;
		else {
			if (ID1 < ID2)
				return -1;
			else if (ID1 == ID2)
				return 0;
			else
				return 1;
		}
	}
}

string getStr(set<string> SET, string start) {
	/// Sort the live-in list
	int size = SET.size();
	string* strList = new string[size];
	int i = 0, j = 0;
	for (
		set<string>::iterator it = SET.begin();
		it != SET.end(); it++
	) {
		string s = *it;
		strList[i] = s;
		i++;
	}

	for (i = 0; i < size; i++) {
		for (j = i; j < size; j++)
		if (compare(strList[i], strList[j]) > 0) {
			string tmp = strList[i];
			strList[i] = strList[j];
			strList[j] = tmp;
		}
	}
	/// Print in separate lines, each contains at most 16 registers
	int rowNum = size / 16;
	string str = "";

	for (
		i = 0; i < rowNum; i++
	) {
		str += start;
		str += " ";
		for ( j = 0; j < 16; j++) {
			str += strList[i*16 + j];
			str += " ";
		}
		str += "\n";
	}
	if (size%16 != 0 || size == 0) {
		str += start;
		str += " ";
		for (j = 16* rowNum; j < size; j++) {
			str += strList[j];
			str += " ";
		}
		str += "\n";
	}
	return str;
}

bool isReg(string operand, string reg) {
	string newReg = getRegister(operand);
	if (newReg.compare(reg.c_str()) == 0 )
		return true;
	else
		return false;
}

string getRealRegister(int regID) {
	stringstream ss;
	ss << "$" << regID;
	return ss.str();
}

string getSymbolicRegister(int regID) {
	stringstream ss;
	ss << "s" << regID;
	return ss.str();
}

int INFINITY = 100000;
