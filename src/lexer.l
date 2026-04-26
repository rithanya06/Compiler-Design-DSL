%{
#include "y.tab.h"
#include <stdlib.h>
%}

%%
[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[a-zA-Z]+   { return ID; }
"="         { return '='; }
"+"         { return '+'; }
[ \t]       ;
\n          return '\n';
.           ;
%%

int yywrap() { return 1; }
