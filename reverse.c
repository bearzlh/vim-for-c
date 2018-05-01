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

static void reverse_str( char * str );

/* 
 * ===  FUNCTION  ======================================================================
 *         Name:  main
 *  Description:  
 * =====================================================================================
 */
int main ( int argc, char *argv[] )
{
    char string[5] = "abcd";
    reverse_str(string);
    return EXIT_SUCCESS;
}


/* 
 * ===  FUNCTION  ======================================================================
 *         Name:  reverse_str
 *  Description:  
 * =====================================================================================
 */
static void reverse_str ( char *str )
{
    int len = strlen(str);
    char ch;
    int step;

    for ( step = 0; step < len / 2; step++ ) {
        ch = str[len - step - 1];
        str[len - step - 1] = str[step];
        str[step] = ch;
    }
    printf("%s,len=%d\n",str,len);
}
