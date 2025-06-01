%{ 
	#include<stdio.h> 
	#include<stdlib.h> 
	int yylex();
	int yyerror();
%} 
%token A B  
%% 
S : X B 
X : A X 
  | ; 
%% 
void main() 
{ 
	printf("Enter the input\n"); 
	yyparse(); 
	printf("Valid String\n"); 
} 
int yyerror() 
{ 
	printf("Invalid String\n"); 
	exit(0); 
}
