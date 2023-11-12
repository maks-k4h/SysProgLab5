/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IF = 258,
     ELSE = 259,
     FOR = 260,
     WHILE = 261,
     RETURN = 262,
     CHAR = 263,
     SCHAR = 264,
     UCHAR = 265,
     SHORT = 266,
     SSHORT = 267,
     USHORT = 268,
     INT = 269,
     SINT = 270,
     UINT = 271,
     LONG = 272,
     SLONG = 273,
     ULONG = 274,
     FLOAT = 275,
     DOUBLE = 276,
     LDOUBLE = 277,
     VOID = 278,
     INCLUDE = 279,
     NUMBER = 280,
     FLOAT_NUMBER = 281,
     STR = 282,
     CHARACTER = 283,
     IDENTIFIER = 284,
     ADD = 285,
     SUBTRACT = 286,
     DIVIDE = 287,
     MULTIPLY = 288,
     UNARY = 289,
     AND = 290,
     OR = 291,
     EQ = 292,
     LE = 293,
     GE = 294,
     NE = 295,
     GT = 296,
     LT = 297,
     PRINTFF = 298,
     SCANFF = 299
   };
#endif
/* Tokens.  */
#define IF 258
#define ELSE 259
#define FOR 260
#define WHILE 261
#define RETURN 262
#define CHAR 263
#define SCHAR 264
#define UCHAR 265
#define SHORT 266
#define SSHORT 267
#define USHORT 268
#define INT 269
#define SINT 270
#define UINT 271
#define LONG 272
#define SLONG 273
#define ULONG 274
#define FLOAT 275
#define DOUBLE 276
#define LDOUBLE 277
#define VOID 278
#define INCLUDE 279
#define NUMBER 280
#define FLOAT_NUMBER 281
#define STR 282
#define CHARACTER 283
#define IDENTIFIER 284
#define ADD 285
#define SUBTRACT 286
#define DIVIDE 287
#define MULTIPLY 288
#define UNARY 289
#define AND 290
#define OR 291
#define EQ 292
#define LE 293
#define GE 294
#define NE 295
#define GT 296
#define LT 297
#define PRINTFF 298
#define SCANFF 299




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

