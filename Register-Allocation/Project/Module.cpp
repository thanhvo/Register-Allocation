/*
 * Module.cpp
 *
 *  Created on: Apr 3, 2011
 *      Author: thanh
 */
#include <iostream>
#include "Module.h"

void Module::insertFunction(Function* function) {
	functionList.push_back(function);
	function->setParent(this);
}

void Module::generateCFG() {
	for (
		FunctionListType::iterator FF = functionList.begin();
		FF < functionList.end(); FF++
	) {
		Function* function = *FF;
		function->generateCFG();
	}
}

void Module::runLiveRangeAnalysis() {
	for (
		FunctionListType::iterator FF = functionList.begin();
		FF < functionList.end(); FF++
	) {
		Function* function = *FF;
		function->runLiveRangeAnalysis();
	}
}

void Module::constructInterferenceGraph() {
	for (
		FunctionListType::iterator FF = functionList.begin();
		FF != functionList.end(); FF++
	) {
		Function* function = *FF;
		function->constructInterferenceGraph();
	}
}

void Module::allocateRegisters() {
	for (
		FunctionListType::iterator FF = functionList.begin();
		FF < functionList.end(); FF++
	) {
		Function* function = *FF;
		function->allocateRegisters();
	}
}

void Module::print(ostream &out) {
	out << header;
	for (
			FunctionListType::iterator FF =functionList.begin();
			FF < functionList.end(); FF++
	) {
		Function* function = *FF;
		function->print(out);
	}
}
