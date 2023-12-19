%{
        #include <stdio.h>
%}

%token NUMBER ID
%left '+' '-'
%left '*' '/'

%%
E: E'+'E
 | E'-'E
 | E'*'E
 | E'/'E
 | '('E')'
 | '-'NUMBER
 | '-'ID
 | NUMBER
 | ID
 ;
%%
void main() {
 printf("Enter the expression\n");
 yyparse();
 printf("\nExpression is valid\n");
}
void yyerror(){
 printf("\nExpression is invalid\n");
}
