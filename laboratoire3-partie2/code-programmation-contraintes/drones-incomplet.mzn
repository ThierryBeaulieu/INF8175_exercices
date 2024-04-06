include "globals.mzn";

int: n= 10; % size of the square 
array [1..n] of var 1..n: q; % decision variables


% print function
output	
  [if fix(q[i]) = j then "D " 
   else ". " 
   endif
   
   ++
   
   if j = n then "\n" 
   else "" endif	
   | i, j in 1..n];