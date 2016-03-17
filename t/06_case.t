
# vi: ft= et tw=4 sw=4

use lib 't/lib';
use Test::sakura 'no_plan';

run_tests();

__DATA__


=== TEST 1: test case
--- src

#include <stdio.h>

int main()
{
   int Count;

   for (Count = 0; Count < 4; Count++)
   {
      printf("%d\n", Count);
      switch (Count)
      {
         case 1:
            printf("%d\n", 1);
            break;

         case 2:
            printf("%d\n", 2);
            break;

         default:
            printf("%d\n", 0);
            break;
      }
   }

   return 0;
}

// vim: set expandtab ts=4 sw=3 sts=3 tw=80 :

--- args
--- out
0
0
1
1
2
2
3
0
--- err

