%{
//
// Created by Maks Konevych on 12.11.2023.
//
%}

%{
    #include "y.tab.h"

    int numlines=0;
%}

alp [a-zA-Z]
digit [0-9]

%%

%{ // keywords
%}
"if"	                    { return IF; }
"else"	                    { return ELSE; }
"for"	                    { return FOR; }
"while"	                    { return WHILE; }
"return"                    { return RETURN; }

%{ // types
%}
"char"                      { return CHAR; }
"signed char"               { return SCHAR; }
"unsigned char"             { return UCHAR; }

"short"                     { return SHORT; }
"signed short"              { return SSHORT; }
"unsigned short"            { return USHORT; }

"int"                       { return INT; }
"unsigned int"              { return UINT; }
"signed int"                { return SINT; }

"long"                      { return LONG; }
"unsigned long"             { return ULONG; }
"signed long"               { return SLONG; }

"float"                     { return FLOAT; }
"double"                    { return DOUBLE; }
"long double"               { return LDOUBLE; }
"void"                      { return VOID; }

%{ // preprocessor
%}
^"#include"[ ]*<.+\.h>      { return INCLUDE; }

%{ // literals
%}
[-]?{digit}+                { return NUMBER; }
[-]?{digit}+\.{digit}{1,6}  { return FLOAT_NUMBER; }
["].*["]                    { return STR; }
['].[']                     { return CHARACTER; }
({alp}|_)({alp}|{digit})*    { return IDENTIFIER; }

%{ // operators
%}
"+"                         { return ADD; }
"-"                         { return SUBTRACT; }
"/"                         { return DIVIDE; }
"*"                         { return MULTIPLY; }
"++"|"--"                   { return UNARY; }
"&&"	                    { return AND; }
"||"	                    { return OR; }
"=="                        { return EQ; }
"<="                        { return LE; }
">="                        { return GE; }
"!="                        { return NE; }
">"	                        { return GT; }
"<"	                        { return LT; }

%{ // comments
%}
\/\/.*                      { ; }
\/\*(.*\n)*.*\*\/           { ; }

%{ // misc.
%}
[ \t]*                      { ; }
[\n]                        { numlines++; }
.	                        { return *yytext; }
