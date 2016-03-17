
# vi: ft= et tw=4 sw=4

use lib 't/lib';
use Test::sakura 'no_plan';

run_tests();

__DATA__


=== TEST 1: test math library
--- src

#include <stdio.h>
#include <math.h>

int main()
{
   printf("%f\n", sin(0.12));
   printf("%f\n", cos(0.12));
   printf("%f\n", tan(0.12));
   printf("%f\n", asin(0.12));
   printf("%f\n", acos(0.12));
   printf("%f\n", atan(0.12));
   printf("%f\n", sinh(0.12));
   printf("%f\n", cosh(0.12));
   printf("%f\n", tanh(0.12));
   printf("%f\n", exp(0.12));
   printf("%f\n", fabs(-0.12));
   printf("%f\n", log(0.12));
   printf("%f\n", log10(0.12));
   printf("%f\n", pow(0.12, 0.12));
   printf("%f\n", sqrt(0.12));
   printf("%f\n", round(12.34));
   printf("%f\n", ceil(12.34));
   printf("%f\n", floor(12.34));

   return 0;
}

/* vim: set expandtab ts=4 sw=3 sts=3 tw=80 :*/

--- args
--- out
0.119712
0.992809
0.120579
0.120290
1.450506
0.119429
0.120288
1.007209
0.119427
1.127497
0.120000
-2.120264
-0.920819
0.775357
0.346410
12.000000
13.000000
12.000000
--- err

