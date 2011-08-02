/*
 * Parser.h
 *
 *  Created on: Apr 3, 2011
 *      Author: thanh
 */

#ifndef PARSER_H_
#define PARSER_H_

#include <string>
#include "Module.h"

using namespace std;

class Tokenizer;

class Parser {
public:
	Parser() {};
	void readFromFile( string fileName, Module &M );
	void writeToFile( string fileName, Module &M );
};

#endif /* PARSER_H_ */
