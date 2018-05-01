/*
 * =====================================================================================
 *
 *       Filename:  reverse.c
 *
 *    Description:  reverse string
 *
 *        Version:  1.0
 *        Created:  2018年05月01日 09时34分40秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  bearzlh (https://github.com/bearzlh), bear.zheng@yunzhihui.com
 *   Organization:  
 *
 * =====================================================================================
 */



#include <stdlib.h>
#include <stdio.h>
#include <string.h>

static char *reverse_str( char * str );
static inline void word_count();

/* 
 * ===  FUNCTION  ======================================================================
 *         Name:  main
 *  Description:  
 * =====================================================================================
 */
int main ( int argc, char *argv[] )
{
    char string[5] = "abcd";
    printf("%s", reverse_str(string));
    word_count();
    return EXIT_SUCCESS;
}


/* 
 * ===  FUNCTION  ======================================================================
 *         Name:  reverse_str
 *  Description:  
 * =====================================================================================
 */
static char *reverse_str ( char *str )
{
    int len = strlen(str);
    char ch;
    int step;

    for ( step = 0; step < len / 2; step++ ) {
        ch = str[len - step - 1];
        str[len - step - 1] = str[step];
        str[step] = ch;
    }
    return str;
}


/* 
 * ===  FUNCTION  ======================================================================
 *         Name:  word_count
 *  Description:  get word numbers 
 * =====================================================================================
 */
static inline void word_count ()
{
    int count = 0;
    int in = 0;
    char ch;
    while ( (ch = getchar()) != EOF){
        if ( ch != '\n' && ch != '\t' && ch != ' ' ) {
            if ( in == 0  ){
                in = 1;
                count++;
            }
        } else {
            in = 0;
        }
    }

    printf("there are %d words",count);
}
