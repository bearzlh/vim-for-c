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
 *         Author:  bearzlh (https://github.com/bearzlh),
 * bear.zheng@yunzhihui.com Organization:
 *
 * =====================================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static inline void word_count();

/*
 * ===  FUNCTION
 * ====================================================================== Name:
 * main Description:
 * =====================================================================================
 */
int main(int argc, char *argv[]) {
  printf("%s\n", "hi");
  word_count();
  return EXIT_SUCCESS;
}

/*
 * ===  FUNCTION
 * ====================================================================== Name:
 * word_count Description:  get word numbers
 * =====================================================================================
 */
static inline void word_count() {
  int count = 0;
  int in = 0;
  char ch;
  while ((ch = getchar()) != EOF) {
    if (ch != '\n' && ch != '\t' && ch != ' ') {
      if (in == 0) {
        in = 1;
        count++;
      }
    } else {
      in = 0;
    }
  }

  printf("there are %d words", count);
}
