%{
#include "hex_colour.tab.h"
#include <iostream>
#include <cstring>

using namespace std;

void yyerror(const char *s);
%}

%option noyywrap

%%

"#"               { return HASH; }
[0-9A-Fa-f]{2}   { yylval.str = strdup(yytext); return HEX_PAIR; }
[ \t\n]+         { /* Ignore whitespace */ }
.                { yyerror("Invalid character in color code"); }

%%
