include "globals.mzn"; % we want to use global constraints in our model

int: n = 3; % parameter: size of 3
int: tot = n * (n^2 + 1) div 2; % value of the sum of each row, column, and diagonal

array[1..n,1..n] of var 1..n*n: x; % decision variables: one per cell, with the domain between 1 and n^2

% [Complete with your constraints]

constraint all_different(x);

constraint for_each(1..i)(sum()())

solve satisfy; % We want to find a feasible solution

% pretty print functions
output
[
  "total: " ++ show(tot) ++ "\n" ++
  "solution:"
]
++
[
  if j = 1 then "\n" else " " endif ++
    show(x[j,i])
  | i in 1..n, j in 1..n
];
