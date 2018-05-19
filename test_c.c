/*
 * =====================================================================================
 *
 *       Filename:  test_c.c
 *
 *    Description:  This a test for csupport
 *
 *        Version:  1.0
 *        Created:  2018年05月01日 04时12分28秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (),
 *   Organization:
 *
 * =====================================================================================
 */

#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
/*
 * ===  FUNCTION
 * ====================================================================== Name:
 * main Description:  test
 * =====================================================================================
 */
int main ( int argc, char *argv[] )
{
    FILE	*fptr;
    char const	*fptr_file_name = "a.txt";
    char    buff[256];

    fptr	= fopen( fptr_file_name, "a+" );
    if ( fptr == NULL ) {
        fprintf ( stderr, "couldn't open file '%s'; %s\n",
                fptr_file_name, strerror(errno) );
        exit (EXIT_FAILURE);
    }
    fputs("This is a test\n",fptr);
    fseek(fptr,0,SEEK_SET);

    while ( fgets(buff,254,fptr) ){
        printf("%s\n",buff);
    }
    if( fclose(fptr) == EOF ) {
        fprintf ( stderr, "couldn't close file '%s'; %s\n",
                fptr_file_name, strerror(errno) );
        exit (EXIT_FAILURE);
    }

    return EXIT_SUCCESS;
}

