%{
	int num;
	_Bool isDivisible;
%}
%%
[0-9]+ { num= atoi(yytext); isDivisible= (num%7 ==0); printf("%d",num);}
\n {return 0;}
%%

void main(){
	printf("Enter number: ");
	yylex();
	if(isDivisible) printf("is divisible by 7\n");
	else printf("is not divisible by 7\n");
	return;
}
int yywrap (){}

