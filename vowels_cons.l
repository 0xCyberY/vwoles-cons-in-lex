%{
#include<stdio.h>
int c=0,v=0;
%}
%%
[aieouAIEOU] {v++;}
[a-zA-Z] {c++;}
%%
int main(void)
{
printf("Enter the string:\n");
yylex();
printf("vowels = %d \n",v);
printf("constants = %d \n",c);
return 0;
}
