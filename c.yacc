%{
    #include <stdio.h>
    #include <string.h>
    #include <stdlib.h>
    #include <ctype.h>
    #include "lex.yy.c"

    void yyerror(const char *s);
    int yylex();
    int yywrap();
%}

%token IF ELSE FOR WHILE RETURN CHAR SCHAR UCHAR SHORT SSHORT USHORT INT SINT UINT LONG SLONG ULONG FLOAT DOUBLE LDOUBLE VOID INCLUDE NUMBER FLOAT_NUMBER STR CHARACTER IDENTIFIER ADD SUBTRACT DIVIDE MULTIPLY UNARY AND OR EQ LE GE NE GT LT PRINTFF SCANFF

%%

program: directive program
| function_def program
|
;

directive: INCLUDE
;

function_def: datatype IDENTIFIER '(' parameters ')' '{' body return '}'
;

parameters: parameters_ne
|
;

parameters_ne: parameter
| parameter ',' parameters_ne
;

parameter: datatype IDENTIFIER
;


datatype: CHAR
| SCHAR
| UCHAR
| SHORT
| USHORT
| SSHORT
| INT
| UINT
| SINT
| LONG
| ULONG
| SLONG
| FLOAT
| DOUBLE
| LDOUBLE
| VOID
;

body: FOR '(' statement ';' condition ';' statement ')' '{' body '}'
| WHILE '(' condition ')' '{' body '}'
| IF '(' condition ')' '{' body '}' else
| statement ';'
| body body
|
;

else: ELSE '{' body '}'
|
;

condition: value comparison value
;

statement: datatype IDENTIFIER init
| IDENTIFIER '=' expression
| IDENTIFIER comparison expression
| IDENTIFIER UNARY
| UNARY IDENTIFIER
| expression
;

init: '=' value
|
;

expression: expression arithmetic expression
| value
| function_call
;

function_call: IDENTIFIER '(' f_arguments ')'

f_arguments: f_arguments_ne
|
;

f_arguments_ne: expression
| expression ',' f_arguments_ne
;

arithmetic: ADD
| SUBTRACT
| MULTIPLY
| DIVIDE
;

comparison: LT
| GT
| LE
| GE
| EQ
| NE
;

value: NUMBER
| FLOAT_NUMBER
| CHARACTER
| STR
| IDENTIFIER
| '*' IDENTIFIER
| '&' IDENTIFIER
;

return: RETURN value ';'
|
;

%%

int main() {
    printf("Analyzing...\n");
    int res = yyparse();
    if (res == 0) {
        printf("Syntactic analysis succeeded!\n");
    }
}

void yyerror(const char* msg) {
    fprintf(stderr, "%s\n", msg);
}
