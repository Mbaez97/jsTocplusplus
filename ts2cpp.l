%option yylineno

%{
    // Library of functions for the parser
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    #include <math.h>
}%

%%
    "/*"(.|\n)*"*/" {yybegin(COMMENT);}
    "//"(.)* {yybegin(COMMENT);}
    // Auto set type variable
    "var"{
        yylval=strdup(yytext); 
        return AUTO;
    }
    "let"{
        yylval=strdup(yytext); 
        return AUTO;
    }

    // Type: int, float
    "const"(.)":"" "" number"{
        yylval.data_type=0; 
        return INT;
    }
    "let"(.)":"" "" number"{
        yylval.data_type=0; 
        return INT;
    }
    "var"(.)":"" "" number"{
        yylval.data_type=0; 
        return INT;
    }
    "const"(.)":"" "" number"{
        yylval.data_type=2; 
        return FLOAT;
    }
    "let"(.)":"" "" number"{
        yylval.data_type=2; 
        return FLOAT;
    }
    "var"(.)":"" "" number"{
        yylval.data_type=2; 
        return FLOAT;
    }
    
    // Type: string
    "let"(.)":"" "" string"{
        yylval.data_type=4; 
        return STRING;
    }
    "var"(.)":"" "" string"{
        yylval.data_type=4; 
        return STRING;
    }
    "const"(.)":"" "" string"{
        yylval.data_type=4; 
        return STRING;
    }

    // Conditional statements
    "if"{return IF;}
    "else"{return ELSE;}
    "else"[ ]+"if"{return ELSEIF;}

    // Loop statements
    "for"{return FOR;}
    "do"{return DO;}
    "while"{return WHILE;}

    // POO statements
    "class"{return CLASS;}

    // Function staments
    "console.log"{return PRINT;}
    "console.log"{return PRINTLN;}
    
    ":"{return COLON;}
    "?"{return QM;}
    "("{return LP;}
    ")"{return RP;}
    "{"{return LC;}
    "}"{return RC;}
    "["{return LB;}
    "]"{return RB;}
    ";"{return SEMICOLON;}
    ","{return COMA;}
    "="{return ASSIGNMENT;}
    
    // Sum two numbers between the operator +
    [$_a-zA-Z][$_a-zA-Z0-9]* {
        strcpy(yylval.name,yytext); 
        return VAR;
    }

    // Regex for names of variables and
    [$_a-zA-Z]+[$_a-zA-Z0-9]*			{strcpy(yylval.var_name, yytext);return VAR;}
    ("-")?[0-9]+("."[0-9]+)?            {strcpy(yylval.var_name, yytext);return NUMBER;}
    

%%
