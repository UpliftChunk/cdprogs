%%
else|if|main|void|include printf("%s is keyword\n", yytext);
[a-z_A-Z][a-zA-Z0-9_]* printf("%s is identifier\n", yytext);
[0-9]+ printf("%s is number\n", yytext);
\n ;
\t ;
%%
void main(){
	printf("\nEnter a statement: ");
	yylex();
}
int yywrap() {return 1;}
