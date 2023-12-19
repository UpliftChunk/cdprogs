%{
        #include <stdio.h>
	int flag=0;
%}

%token NUMBER ID
%left '+' '-'
%left '*' '/'

%%
S: E{
 printf("\nResult=%d\n", $$);
 return 0;
 };
E: E'+'E {$$= $1 + $3;}
 | E'-'E {$$= $1 - $3;}
 | E'*'E {$$= $1 * $3;}
 | E'/'E {$$= $1 / $3;}
 | '('E')'
 | '-'NUMBER
 | NUMBER
 ;
%%
void main() {
 printf("Enter the expression\n");
 yyparse();
}
void yyerror(){
 printf("\nExpression is invalid\n");
}
