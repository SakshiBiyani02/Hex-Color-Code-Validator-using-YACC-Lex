# Hex-Color-Code-Validator-using-YACC-Lex
The Hex Color Code Validator is a program that reads and validates hexadecimal color codes in the format #RRGGBB, where RR, GG, and BB are pairs of hexadecimal digits representing red, green, and blue color components, respectively. The program identifies valid color codes and provides appropriate feedback, making it a useful tool for web developers and designers.
## Procedure
1.	Lexical Analysis: The program uses Flex to tokenize the input string. It recognizes the following tokens:
-HASH: Represents the # character.
-HEX_PAIR: Represents two hexadecimal characters (e.g., FF, 00, 33).
2.	Bison Parser Generation: The program employs Bison to define the grammar for valid hex color codes: A valid hex color code must start with # followed by three pairs of hexadecimal digits.
When you run the command bison -d hex_colour.y, it generates two files:
tab.c: This file contains the parser implementation code.
tab.h: This header file contains token definitions and type declarations.
3.	Input Handling: The user is prompted to enter a hex color code. The input is processed to determine if it matches the expected format.
4.	Validation: If the input matches the defined grammar rules, it is considered a valid hex color code. Otherwise, the program returns an error message.
5.	Output: The program outputs whether the provided color code is valid, along with the valid color code itself.
## Editor Used: 
Visual Studio Code 
## Compiler Used:
1. GCC (GNU Compiler Collection) for compiling C and C++ code.
2. Bison and Flex for generating the parser and lexer, respectively.
## Executable Commands
1.	Generate C File from Bison Program: bison -d hex_colour.y
2.	Generate C File from Lex Program: flex hex_colour.l
3.	Compile the C File: g++ lex.yy.c hex_colour.tab.c -o hex_colour
4.	Run the Program with Input File: ./hex_colour
## Execution Process of Hex Color Code Validator using YACC & Lex
The Hex Color Code Validator program utilizes Bison (YACC) for parsing and Flex (Lex) for lexical analysis. Below is the step-by-step process of executing the program:
### Bison Execution (.y File Processing)
Running the command: bison -d hex_colour.y
This generates two files:
-hex_colour.tab.c: Contains the parser implementation.
-hex_colour.tab.h: Contains token definitions and type declarations.
### Lex Execution (.l File Processing)
Running the command: flex hex_colour.l
This generates the lex.yy.c file, which contains the lexical analyzer implementation.
### Compilation of Generated Files
The generated .c files are compiled using g++ to create the final executable:
g++ lex.yy.c hex_colour.tab.c -o hex_colour
### Running the Program
The compiled program can be executed as follows: ./hex_colour
It then prompts the user to enter a hex color code and validates its correctness.
This process ensures that the program correctly recognizes and validates hexadecimal color codes.
## Output
![Output](https://github.com/SakshiBiyani02/Hex-Color-Code-Validator-using-YACC-Lex/blob/main/Screenshot%202025-02-22%20190141.png?raw=true)
### Test cases explanation
1. Test Case 1: 
When the input is #FF5733, the program identifies this as a valid hexadecimal color code. The expected output is Valid Color Code: #FF5733, indicating that the input conforms to the required format of starting with # followed by six hexadecimal digits. This input represents a shade of orange.
2. Test Case 2: 
The input #GHIJKL serves as an invalid test case because it contains characters that are not valid hexadecimal digits. The program is expected to output Error: Invalid character in colour code, indicating that the input does not meet the criteria for a valid hex colour code.
