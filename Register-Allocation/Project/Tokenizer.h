/*
 * Tokenizer.h
 *
 *  Created on: Apr 3, 2011
 *      Author: thanh
 */

#ifndef TOKENIZER_H_
#define TOKENIZER_H_

#include <string>

using namespace std;
class Tokenizer
{
		const string m_string;
	    size_t m_offset;
	    string m_token;
	    string m_delimiters;
	public:
        static const string DELIMITERS;
        Tokenizer(const string& str);
        Tokenizer(const string& str, const string& delimiters);
        bool NextToken();
        bool NextToken(const string& delimiters);
        const string GetToken() const;
};

#endif /* TOKENIZER_H_ */
