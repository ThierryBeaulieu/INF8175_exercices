include "globals.mzn"; 

% Les paramètres représentent l'indice de la maison où l'attribut est lié: [1,2,3,4,5]

int: Brit = 1;
int: Sweed = 2;
int: Dane = 3;
int: Norwegian = 4;
int: German = 5;
set of int: States = 1..5;

int: dogs = 1;
int: fish = 2;
int: birds = 3;
int: cats = 4;
int: horses = 5;
set of int: Animals = 1..5;

int: tea = 1;
int: coffee = 2;
int: milk = 3;
int: beer = 4;
int: water = 5;
set of int: Drinks = 1..5;

int: Football = 1;
int: Baseball = 2;
int: Volley = 3;
int: Tennis = 4;
int: Hockey = 5;
set of int: Sports = 1..5;

int: red = 1;
int: green = 2;
int: white = 3;
int: yellow = 4;
int: blue = 5;
set of int: Color = 1..5;

array[States] of var  1..5: s;
array[Animals] of var  1..5: a;
array[Drinks] of var  1..5: d;
array[Sports] of var  1..5: k;
array[Color] of var  1..5: c;

solve satisfy;

output
[
 "s: " ++ show(s) ++ "\n" ++
 "a: " ++ show(a) ++ "\n" ++
 "d: " ++ show(d) ++ "\n" ++
 "k: " ++ show(k) ++ "\n" ++
 "c: " ++ show(c) ++ "\n" 
];