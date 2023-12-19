%{
	int vc=0;
	int cc=0;
%}

%%
[aeiouAEIOU] vc++;
[a-zA-Z] cc++;
[\n] return 0; 
%%

void main(){
	printf("Enter word: ");
	yylex();
	printf("Consonents: %d\nVowels: %d\n",cc,vc);
	return;
}
int yywrap (){}

