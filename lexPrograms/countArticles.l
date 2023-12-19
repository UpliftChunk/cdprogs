%{
	int c=0;
%}

%%
" a "|" the "|" an " c++;
"A "|"The "|"An " c++;
\n return 0;
[a-zA-Z] ;

%%

void main(){
	printf("Enter statement: ");
	yylex();
	printf("Articles: %d\n",c);
	return;
}
int yywrap (){return 1;}

