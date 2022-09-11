# Introduction
Due to a particular need for lexing and also then parsing there is need to 
understand lexer and parser in this case we will look into the lexer and then
the parser, for this we will also need to collect all required terminologies
and understand them along with the practical application of lexers and parsers
via ANTLR or any other tool. Then we will focus on the ANTLR tool and how to use
it to write a parser.

Lexical analysis is converting a sequence of cahracter into lexical tokens. 
This conversion into lexical tokens identifies and assigns them meaning.

Lexing (Lexical analysis) can be divided into two stages:

1. Scanning: Take input string and convert into syntactic units called lexemes.
2. Evaluating: Converts lexemes into processed values (or assign meanings) and take actions (in old compilers).

Tokenization is process of doing the scanning and evaluating.

Lexeme is the actual input string that is identified similar to word in english.
Token is the word and its meaning both combined and stored together or associated. 
Association can be structured as pair of the token name and token value (optional).
Token name is category of lexical unit, simply stated it is the name of the type of
token which can be as below.

Categories Of Lexical Units:
identifier: Are like variable or function names.
keyword: Reserved words in a language.
separator (/ punctuators): punctuation characters.
operator: Operator;
literal: numeric, logical, textual, reference literals (values);
comment: line, block or any comments.

# Specifying the Tokens

For lexer we give it lexical grammar which is a set of rules in regular language, 
according to which it can identify the tokens, attach the meanings and take any action 
(mostly old compilers).

Generally lexers are context free so no need for lookahead or backtracking. Other case is less frequent e.g. C/C++.



# Resources:

[Lexical Analysis Wikipedia](https://en.wikipedia.org/wiki/Lexical_analysis)

