%{
#include <iostream>
#include <cstring>
#include <cstdlib>
#include <cstdio>  // For file handling

using namespace std;

void yyerror(const char *s);
int yylex();

/* Define YYSTYPE to hold a string for HEX_PAIR */
%}

%union {
    char *str;  // Declare a string type for HEX_PAIR
}

%token HASH
%token <str> HEX_PAIR  // Declare HEX_PAIR as a token with type 'str'

%%

// Grammar rules
input:
    HASH HEX_PAIR HEX_PAIR HEX_PAIR {
        cout << "Valid Color Code: #" << $2 << $3 << $4 << endl;
    }
    ;

%%

// Error handling function
void yyerror(const char *s) {
    cerr << "Error: " << s << endl;
}

// Main function
int main() {
    cout << "Enter a hex color code (e.g., #FF5733): ";
    yyparse();  // Start parsing the input

    return 0;
}
