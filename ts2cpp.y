%{
    #include <stdio.h>
    #define TRUE 1
    #define FALSE 0
    extern int yylex();
    extern int yyparse();
    extern FILE *yyin; // input file
    extern FILE *yyout; // output file
    extern char *yytext; // token string
    extern int yylineno; // line number
    void yyerror(char *s);
    
}%
// define all tokens
%token BOOL, CHAR, INT, FLOAT, VOID, IF, ELSE, WHILE, RETURN, ID, NUM,
%token PLUS, MINUS, MULT, DIV, MOD, ASSIGN, EQ, NE, LT, GT, LE, GE,
%token LPAREN, RPAREN, LBRACE, RBRACE, COMMA, SEMICOLON, LBRACKET, RBRACKET,
%token AND, OR, NOT,
%token IFX, ELSEX, WHILEX, RETURNX,
%token COMMENT, STRING,
%token EOF

