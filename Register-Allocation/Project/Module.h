/*
 * Module.h
 *
 *  Created on: Apr 3, 2011
 *      Author: thanh
 */

#ifndef MODULE_H_
#define MODULE_H_

#include <string>
#include <vector>
#include "Function.h"


class Function;

using namespace std;

class Module {
	string header;
	string footer;

	typedef vector<Function*> FunctionListType;

	// List of basic blocks
	FunctionListType functionList;

public:

	Module(){
		header = "";
		footer = "";
	}

	~Module (){}

	void setHeader(string _header) {
		header = _header;
	}

	string getHeader() { return header;}

	void setFooter(string _footer) {
		footer = _footer;
	}

	string getFooter() { return footer;}

	FunctionListType &getFunctionList () { return functionList;}

	void insertFunction (Function* function);

	void generateCFG();

	void runLiveRangeAnalysis();

	void constructInterferenceGraph();

	void allocateRegisters();

	void print(ostream &out);

};

#endif /* MODULE_H_ */
