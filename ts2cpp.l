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
    "const"(.)":"" "" number"{
        yylval.data_type=0; 
        return INT;
    }
    "let"(.)":"" "" number"{
        yylval.data_type=0; 
        return INT;
    }
    // Sum two numbers between the operator +
    [$_a-zA-Z][$_a-zA-Z0-9]* {
        strcpy(yylval.name,yytext); 
        return VAR;
    }







%%
