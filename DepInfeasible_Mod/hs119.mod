param a {1..16,1..16}, default 0;
param b {1..8, 1..16}, default 0;
param c {1..8}, default 0;

var x {1..16} >= 0, <= 5;

minimize obj: 
  sum {i in 1..16} sum {j in 1..16}
  a[i,j]*(x[i]^2 + x[i] + 1)*(x[j]^2 + x[j] + 1)
  ;

subject to constr1dep {i in 1..1}: 
	(sum {j in 1..16} b[i,j]*x[j] - c[i])
	-(sum {j in 1..16} b[i,j]*x[j] - c[i])^2 = 100;
subject to constr1 {i in 1..8}: sum {j in 1..16} b[i,j]*x[j] = c[i];

data;

param a :=
  1  1  1
  1  4  1
  1  7  1
  1  8  1
  1 16  1
  2  2  1
  2  3  1
  2  7  1
  2 10  1
  3  3  1
  3  7  1
  3  9  1
  3 10  1
  3 14  1
  4  4  1
  4  7  1
  4 11  1
  4 15  1
  5  5  1
  5  6  1
  5 10  1
  5 12  1
  5 16  1
  6  6  1
  6  8  1
  6 15  1
  7  7  1
  7 11  1
  7 13  1
  8  8  1
  8 10  1
  8 15  1
  9  9  1
  9 12  1
  9 16  1
 10 10  1
 10 14  1
 11 11  1
 11 13  1
 11 12  1
 12 14  1
 13 13  1
 13 14  1
 14 14  1
 15 15  1
 16 16  1
 ;

param b :=
 1   1  0.22
 1   2  0.20
 1   3  0.19
 1   4  0.25
 1   5  0.15
 1   6  0.11
 1   7  0.12
 1   8  0.13
 1   9  1
 2   1 -1.46
 2   3 -1.30
 2   4  1.82
 2   5 -1.15
 2   7  0.80
 2  10  1
 3   1  1.29
 3   2 -0.89
 3   5 -1.16
 3   6 -0.96
 3   8 -0.49
 3  11  1
 4   1 -1.10
 4   2 -1.06
 4   3  0.95
 4   4 -0.54
 4   6 -1.78
 4   7 -0.41
 4  12  1
 5   4 -1.43
 5   5  1.51
 5   6  0.59
 5   7 -0.33
 5   8 -0.43
 5  13  1
 6   2 -1.72
 6   3 -0.33
 6   5  1.62
 6   6  1.24
 6   7  0.21
 6   8 -0.26
 6  14  1
 7   1  1.12
 7   4  0.31
 7   7  1.12
 7   9 -0.36
 7  15  1
 8   2  0.45
 8   3  0.26
 8   4 -1.10
 8   5  0.58
 8   7 -1.03
 8   8  0.10
 8  16  1
 ;

param c :=
 1  2.5
 2  1.1
 3 -3.1
 4 -3.5
 5  1.3
 6  2.1
 7  2.3
 8 -1.5
 ;

let x[1] := 10;
let x[2] := 10;
let x[3] := 10;
let x[4] := 10;
let x[5] := 10;
let x[6] := 10;
let x[7] := 10;
let x[8] := 10;
let x[9] := 10;
let x[10] := 10;
let x[11] := 10;
let x[12] := 10;
let x[13] := 10;
let x[14] := 10;
let x[15] := 10;
let x[16] := 10;

#printf "optimal solution as starting point \n";
#let x[1] := 0.03984735;
#let x[2] := 0.7919832;
#let x[3] := 0.2028703;
#let x[4] := 0.8443579;
#let x[5] := 1.126991;
#let x[6] := 0.9347387;
#let x[7] := 1.681962;
#let x[8] := 0.1553009;
#let x[9] := 1.567870;
#let x[10] := 0;
#let x[11] := 0;
#let x[12] := 0;
#let x[13] := 0.6602041;
#let x[14] := 0;
#let x[15] := 0.6742559;
#let x[16] := 0;

display obj; 

solve;

display x;

display obj;

display obj - 244.899698;