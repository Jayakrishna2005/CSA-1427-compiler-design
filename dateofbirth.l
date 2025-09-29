%{
#include <stdio.h>
%}

%%

([0-2][0-9]|3[0-1])[/\-](0[1-9]|1[0-2])[/\-](19[0-9]{2}|20[0-2][0-9])   { 
    printf("It is a valid Date of Birth\n"); 
}

.+  { 
    printf("It is not a valid Date of Birth\n"); 
}

%%

int yywrap() { return 1; }

int main() {
    printf("Enter the date of birth (DD/MM/YYYY or DD-MM-YYYY): ");
    yylex();
    return 0;
}
