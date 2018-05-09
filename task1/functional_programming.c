/**
 * ※使用禁止
 * 1. 変数への破壊的代入(=, +=, ++, etc)
 * 2. for, while, do while, goto, longjmp
 * 3. main以外の関数定義
 *
 * @brief ./a.out 3 1 4 1 5 9のように与えられた整数の和を計算します
 * @author Ryota Suwa
 * Licenced in CC0
 */
 
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
  if (argv[argc] == NULL) {
    if (argc == 1) {
      fprintf(stderr, "Usage: %s num1 num2 ... numN\n", argv[0]);
      exit(EXIT_FAILURE);
    }
    printf("%d\n", atoi(argv[argc - 1]) + main(argc - 1, argv));
  }
  if (argc > 1) {
    return atoi(argv[argc - 1]) + main(argc - 1, argv);
  }
  return 0;
}
