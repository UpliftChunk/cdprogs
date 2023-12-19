#include <stdio.h>
#include <conio.h>
#include <ctype.h>
#include <string.h>
#include <stdbool.h>    

char keyword[9][10] = {"void","main","printf","int","char","true","if","else","return"};
bool isKeyword(char lexeme[]){
    int i=0, n=7;
    while(i<n){
        if(strcmp(keyword[i++], lexeme)==0) return true;
    }
    return false;
}
void main()
{
    // clrscr();
    FILE *fp = fopen("input.txt", "r");
    char lexeme[10], digit[10];
    char c;
do{
        fflush(stdin);
        c=fgetc(fp);
        int i=0;
//        printf("inLoop1 %c %d\n",c,i);
        // IF ENCOUTERED LETTER
        if(isalpha(c)){
            // A WORD WILL BE ENCOUTERED, IT COULD BE VAR OR KEYWORD
            lexeme[i++]=c;
            int f=1;
            while(f==1){
//        printf("inLoop2\n");
                char d= fgetc(fp);
                if(isdigit(d) ||isalpha(d) ||d=='_')
                    lexeme[i++]=d;
                else{
                    lexeme[i]='\0';
                    f=0;
                    fseek(fp,-1,1);
                }
            }
            if(isKeyword(lexeme))
                printf("%s is KEYWORD\n", lexeme);
            else
                printf("%s is an identifer\n", lexeme);
        }
        else if(isdigit(c)){
            digit[i++]=c;
            while(isdigit(c=getc(fp))){
		digit[i++]=c;
//         printf("inLoop3\n");
		}
            digit[i]='\0';
            printf("%s is an number\n", digit);
        }
        else if(c=='='|| c=='+' || c=='-'|| c=='*'|| c=='/'){
        printf("%c is operator\n", c);
}
    }while(c!=EOF);
    fclose(fp);
    getch();
}

