%option yylineno

%{
    // Library of functions for the parser
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    #include <math.h>
}%

%%
    "/*"(.|\n)*"*/" {
        yybegin(COMMENT);
    }
    "//"(.)* {
        yybegin(COMMENT);
    }
    "var"{
        yylval=strdup(yytext); 
        return AUTO;
    }
    "let"{
        yylval=strdup(yytext); 
        return AUTO;
    }
    "const number"






%%
