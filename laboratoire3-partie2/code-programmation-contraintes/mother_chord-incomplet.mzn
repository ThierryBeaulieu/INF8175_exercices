include "globals.mzn";
 
int: n = 12;

array[1..n] of var 1..n: demi_ton;
array[1..n] of var 1..n: demi_ton_diff;

solve satisfy;