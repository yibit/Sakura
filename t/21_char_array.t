
# vi: ft= et tw=4 sw=4

use lib 't/lib';
use Test::sakura 'no_plan';

run_tests();

__DATA__


=== TEST 1: test char array
--- src

#include <stdio.h>

int main()
{
   int x = 'a';
   char y = x;

   char *a = "hello";

   printf("%s\n", a);

   int c;
   c = *a;

   char *b;
   for (b = a; *b != 0; b++)
      printf("%c: %d\n", *b, *b);

   char destarray[10];
   char *dest = &destarray[0];
   char *src = a;

   while (*src != 0)
      *dest++ = *src++;

   *dest = 0;

   printf("copied string is %s\n", destarray);

   return 0;
}

/* vim: set expandtab ts=4 sw=3 sts=3 tw=80 :*/

--- args
--- out
hello
h: 104
e: 101
l: 108
l: 108
o: 111
copied string is hello
--- err

