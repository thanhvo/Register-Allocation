//============================================================================
// Name        : Main.cpp
// Author      : Thanh Vo
// Version     :
// Description : This program read MIPS input and generate MIPS output containing
// Control Flow Graph of the input program and the set of symbolic registers whose
// live ranges include the point at the start of that basic block.
//============================================================================

#include <stdio.h>
#include <stdlib.h>
#include <string>

#include "Parser.h"
#include "Module.h"
#include "Function.h"
#include "BasicBlock.h"
#include "Instruction.h"

int main(int argc, char* argv[]) {
	Parser *parser = new Parser();
	Module M;

	/// Read the module from input file
	string inputFileName(argv[1]);
	parser->readFromFile(inputFileName, M);

	/// Generate CFGs for the modules
	M.generateCFG();

	/// Generate the set of symbolic registers live within each basic block
	M.runLiveRangeAnalysis();

	/// Construct register interference graph
	M.constructInterferenceGraph();

	/// Allocate real registers for symbolic registers in the module
	M.allocateRegisters();

	/// Print the module to output file
	string outputFileName(argv[2]);
	parser->writeToFile(outputFileName, M);
	return EXIT_SUCCESS;
}
