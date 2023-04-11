# Introduction

Welcome to ANTLR learning using simple questions taking you one step into the ANTLR parser generater proficiency.
This is designed as collection of challenges to create a lexer and parser combinations for a task.
The challenges will keep increasing in complexity and also will assume older questions learnings carried over, but may not be tightly dependent on them.

Here are the questions:

## Challenge 1: 
Create a lexer to count ocurrences of set of words (of, be, the) in a string input.


Input: There should be count of words for 'of', 'be' and 'the'.

Output: { of: 2, be: 2, the: 1}

## Challenge 2: 
Create a lexer to count the ocurrence of two , three and four letter word in a string input.

Input: 
Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem quis veritatis labore dolor cumque? Doloremque praesentium saepe doloribus, iste tempore totam deserunt dolorem ex ea obcaecati rerum at placeat animi!

Output:

## Challenge 3: 
Create a parser to calculate addition, subtraction, multiplication, division on integer numbers.
Input:
1+5
7-23
84*23
253/8

Output:
As per the calculation by any calculator upto 4 decimal places.

## Challenge 4: 
Create a parser to calculate addition, subtraction, multiplication, division on floating point numbers.
No precedence of operator.

Input: 
1.09 + 2.78
4.49 - 1.02
8.19 * 8.95
35.123/6.6 

Output:
As per the calculation by any calculator upto 4 decimal places.

## Challenge 5:
Create a parser to calculate addition, subtraction, multiplication, division on floating point numbers.
Make operators have precedence and also grouping with ().

Input: 
1.09 + 2.78
4.49 - 1.02
8.19 * 8.95
35.123/6.6 

Output:
As per the calculation by any calculator upto 4 decimal places.