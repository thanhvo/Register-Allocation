/*
 * Parser.cpp
 *
 *  Created on: Apr 3, 2011
 *      Author: thanh
 */

#include <fstream>
#include <string>
#include <vector>
#include <iostream>

#include "Parser.h"
#include "Tokenizer.h"

class Tokenizer;

// Replace a string in a string by another one.
void replace(string &str, string searchString, string replaceString) {
	string::size_type pos = 0;
	while ( (pos = str.find(searchString, pos)) != string::npos ) {
		str.replace( pos, searchString.size(), replaceString );
		pos++;
	}
}

void Parser::readFromFile(string fileName, Module &M) {
	ifstream file(fileName.c_str());

	string line, header, footer;

	/// Set the header for the module.
	while (!file.eof()) {
		getline(file,line);
		Tokenizer tokenizer(line, " \t\r\n");
		tokenizer.NextToken();
		string firstWord = tokenizer.GetToken();

		if (
			firstWord.at(firstWord.length()-1) == ':' &&
			firstWord.at(0) != '$'
		) {
			break;
		}
		else {
			header += line;
			header += "\n";
		}
	}
	M.setHeader(header);

	/// Read functions
	while (!file.eof()) {
		int bbID = 0;

		/// Get the function name
		Function *function = new Function();
		string functionName = line;
		replace (functionName, ":", "");
		function->setName(functionName);
		/// Get header for function
		header = line;
		header += "\n";
		bool endFunction = false;
		footer = "";
		bool firstBBInst = false;
		while (!file.eof()) {
			getline(file, line);
			Tokenizer tokenizer(line, " \t\r\n");
			tokenizer.NextToken();
			string firstWord = tokenizer.GetToken();
			if (firstWord.size() < 1) {
				header += "\n";
				break;
			}
			if (firstWord.at(0) == '.' || firstWord.at(0) == '$') {
				header += line;
				header += "\n";
			}
			else if (
				firstWord.at(firstWord.length()-1) == ':' &&
				firstWord.at(0) != '$'
			) {
				endFunction = true;
				break;
			}
			else {
				firstBBInst = true;
				break;
			}
		}
		function->setHeader(header);
		M.insertFunction(function);
		if (endFunction)
			continue;
		bool newLabel = false;
		// Get the basic blocks for function
		while (!file.eof()) {
			BasicBlock *basicBlock = new BasicBlock();
			// Set the content for basic blocks
			string content;
			bool inHeader = true;
			bool inFooter = false;
			string header;
			if (newLabel) {
				inHeader = true;
				header += line;
				header += "\n";
				newLabel = false;
				basicBlock->getLabelList().push_back(line);
			}

			while (!file.eof()) {

				if (firstBBInst)
					firstBBInst = false;
				else
					getline(file, line);
				Tokenizer tokenizer(line, " \t\r\n");
				tokenizer.NextToken();
				string opCode = tokenizer.GetToken();

				// Get branch instruction
				if (opCode.compare("j") == 0 ||
					opCode.compare("jr") == 0 ||
					opCode.compare("jal") == 0 ||
					opCode.compare("jalr") == 0 ||
					opCode.compare("beq") == 0 ||
					opCode.compare("bne") == 0 ||
					opCode.compare("blez") == 0 ||
					opCode.compare("bgtz") == 0 ||
					opCode.compare("bltz") == 0 ||
					opCode.compare("bgez") == 0 ||
					opCode.compare("bltzal") == 0 ||
					opCode.compare("bgezal") == 0 ||
					opCode.compare("break") == 0 ||
					opCode.compare("syscall") == 0) {

					Instruction* inst = new Instruction();
					inst->setContent(line);
					inst->setOpCode(opCode);
					basicBlock->insertInst(inst);
					basicBlock->setTerminator(inst);
					content += line;
					content += "\n";

					getline(file, line);
					Tokenizer tk(line, " \t\r\n");
					tk.NextToken();
					opCode = tk.GetToken();

					/// Check for the label
					if (opCode.at(opCode.length() - 1) == ':') {
						inHeader = true;
						newLabel = true;
						break;
					}
					inst = new Instruction();
					inst->setContent(line);
					inst->setOpCode(opCode);
					basicBlock->insertInst(inst);
					content += line;
					content += "\n";
					inHeader = true;
					break;
				}
				else if (opCode.size() < 1) {
					if (inHeader) {
						header += line;
						header += "\n";
					} else {
						content += line;
						content += "\n";
					}
					continue;
				}
				/// Find a new label
				else if (opCode.at(opCode.length()-1) == ':') {
					if (inHeader) {
						header += line;
						header += "\n";
						basicBlock->getLabelList().push_back(line);
					} else {
						inHeader = true;
						newLabel = true;
						break;
					}
				}
				else if (opCode.at(0) == '.') {
					/// Read the jump table
					if (opCode.compare(".rdata") == 0) {
						inHeader = true;
						header += line;
						header += "\n";
						while (!file.eof()) {
							getline(file, line);
							header += line;
							header += "\n";
							Tokenizer tk(line, " \t\r\n");
							tk.NextToken();
							opCode = tk.GetToken();
							if (opCode.compare(".text") == 0)
								break;
						}
					} else {
						inFooter = true;
						footer = header;
						break;
					}
				} else {
					Instruction* inst = new Instruction();
					inst->setContent(line);
					inst->setOpCode(opCode);
					basicBlock->insertInst(inst);
					content += line;
					content += "\n";
					inHeader = false;
				}
			}
			if (inFooter)
				break;
			basicBlock->setHeader(header);
			bbID++;
			basicBlock->setID(bbID);
			basicBlock->setContent(content);
			function->insertBasicBlock(basicBlock);
		}
		if (line.size() > 0) {
			footer += line;
			footer += "\n";
			// Get the footer of function
			while (!file.eof()) {
				getline(file, line);
				Tokenizer tokenizer(line, " \t\r\n");
				tokenizer.NextToken();
				string firstWord = tokenizer.GetToken();
				/// Case: new line or end of file
				if (firstWord.size() < 1) {
					footer += line;
				}
				// Check if reach another function definition
				else if (
						firstWord.at(firstWord.length()-1) == ':' &&
						firstWord.at(0) != '$'
				) {
					break;
				}
				else {
					footer += line;
					footer += "\n";
				}
			}
		} else {
			/// Ignore the end line character in header
			string newHeader = header.substr( 0, header.length() -1 );
			function->setHeader( newHeader );
			footer = "";
		}
		function->setFooter(footer);
	} // End of read function
}

void Parser::writeToFile(string fileName, Module &M) {
	ofstream file(fileName.c_str());
	M.print((ostream&)file);
}
