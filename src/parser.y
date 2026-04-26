%{
#include <stdio.h>
#include <stdlib.h>

#include "semantic.h"
#include "codegen.h"
#include "ast.h"

void yyerror(const char *s);
int yylex();
%}

%token NUMBER ID

%%

program:
    program stmt
    | stmt
    ;

stmt:
    ID '=' expr '\n' {
        printf("\n[Parser] Assignment recognized\n");
        build_ast();
        check_semantics();
        generate_code();
    }
    ;

expr:
    expr '+' expr { printf("[Parser] Addition operation\n"); }
    | NUMBER      { printf("[Lexer] Number token\n"); }
    | ID          { printf("[Lexer] Identifier token\n"); }
    ;

%%

int main() {
    printf("=== DSL Compiler ===\n");
    yyparse();
    printf("=== Done ===\n");
    return 0;
}

void yyerror(const char *s) {
    printf("Error: %s\n", s);
}
