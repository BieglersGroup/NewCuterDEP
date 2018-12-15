# AMPL Model by Hande Y. Benson
#
# Copyright (C) 2001 Princeton University
# All Rights Reserved
#
# Permission to use, copy, modify, and distribute this software and
# its documentation for any purpose and without fee is hereby
# granted, provided that the above copyright notice appear in all
# copies and that the copyright notice and this
# permission notice appear in all supporting documentation.                     

#   Source:
#   A partial specification of problem SPANHYD.

#   SIF input: Ph. Toint, Sept 1990.

#   classification LNR2-MN-97-33

param l {1..97};
param u {1..97};
param x0 {1..97};

var x {j in 1..97} <= u[j], >= l[j], := x0[j];

minimize obj: - x[1];

subject to n1dep: 
	(x[1] - x[11] - x[21] - x[30] + 51.38) 
	-(x[1] - x[11] - x[21] - x[30] + 51.38)^2 = 0;
subject to n1: 
	x[1] - x[11] - x[21] - x[30] + 51.38 = 0;
subject to n2:
	x[2] + x[11] - x[12] + x[21] - x[22] - x[31] + 13.84 = 0;
subject to n3:
	x[3] + x[12] - x[13] + x[22] - x[23] - x[32] + 2.58 = 0;
subject to n4:
	x[4] - x[14] - x[24] - x[33] + 21.91 = 0;
subject to n5:
	x[5] + x[13] + x[14] - x[15] - x[34] = 0;
subject to n6:
	x[6] - x[16] - x[25] - x[35] + 12.97 = 0;
subject to n7:
	x[7] + x[16] - x[17] + x[25] - x[26] - x[36] = 0;
subject to n8:
	x[8] + x[17] - x[18] + x[26] - x[27] - x[37] + 2.89 = 0;
subject to n9:
	x[9] + x[15] + x[18] - x[19] + x[23] + x[24] + x[27] - x[28] - x[38] + 20.84 = 0;
subject to n10:
	x[10] + x[19] - x[20] + x[28] - x[29] - x[39] + 17.14 = 0;
subject to n11:
	x[30] - x[40] - x[50] - x[59] + 32.06 = 0;
subject to n12:
	x[31] + x[40] - x[41] + x[50] - x[51] - x[60] + 0.28 = 0;
subject to n13:
	x[32] + x[41] - x[42] + x[51] - x[52] - x[61] + 4.2 = 0;
subject to n14:
	x[33] - x[43] - x[53] - x[62] + 48.37 = 0;
subject to n15:
	x[34] + x[42] + x[43] - x[44] - x[63] = 0;
subject to n16:
	x[35] - x[45] - x[54] - x[64] + 18.13 = 0;
subject to n17:
	x[36] + x[45] - x[46] + x[54] - x[55] - x[65] = 0;
subject to n18:
	x[37] + x[46] - x[47] + x[55] - x[56] - x[66] - 1.61 = 0;
subject to n19:
	x[38] + x[44] + x[47] - x[48] + x[52] + x[53] + x[56] - x[57] - x[67] + 26.6 = 0;
subject to n20:
	x[39] + x[48] - x[49] + x[57] - x[58] - x[68] + 18.76 = 0;
subject to n21:
	x[59] - x[69] - x[79] - x[88] + 18.13 = 0;
subject to n22:
	x[60] + x[69] - x[70] + x[79] - x[80] - x[89] = 0;
subject to n23:
	x[61] + x[70] - x[71] + x[80] - x[81] - x[90] = 0;
subject to n24:
	x[62] - x[72] - x[82] - x[91] + 18.13 = 0;
subject to n25:
	x[63] + x[71] + x[72] - x[73] - x[92] = 0;
subject to n26:
	x[64] - x[74] - x[83] - x[93] + 9.1 = 0;
subject to n27:
	x[65] + x[74] - x[75] + x[83] - x[84] - x[94] = 0;
subject to n28:
	x[66] + x[75] - x[76] + x[84] - x[85] - x[95] - 5.81 = 0;
subject to n29:
	x[67] + x[73] + x[76] - x[77] + x[81] + x[82] + x[85] - x[86] - x[96] + 9.1 = 0;
subject to n30:
	x[68] + x[77] - x[78] + x[86] - x[87] - x[97] + 6.02 = 0;
subject to n31:
	x[20] + x[29] + x[49] + x[58] + x[78] + x[87] - 608.35 = 0;
subject to n32:
	-x[1] - x[2] - x[3] - x[4] - x[5] - x[6] - x[7] - x[8] - x[9] - x[10] + 4626.34 = 0;
subject to n33:
	x[88] + x[89] + x[90] + x[91] + x[92] + x[93] + x[94] + x[95] + x[96] + x[97] - 4363.0 = 0;

data;
param l :=
1 77.0
2 1124.52
3 158.0
4 16.0
5 0.0
6 783.65
7 11.0
8 49.0
9 2155.17
10 252.0
11 0.0
12 0.0
13 0.0
14 0.0
15 0.0
16 0.0
17 0.0
18 0.0
19 0.0
20 0.0
21 0.0
22 0.0
23 0.0
24 0.0
25 0.0
26 0.0
27 0.0
28 0.0
29 0.0
30 77.0
31 403.4
32 158.0
33 16.0
34 0.0
35 502.0
36 11.0
37 49.0
38 915.3
39 252.0
40 0.0
41 0.0
42 0.0
43 0.0
44 0.0
45 0.0
46 0.0
47 0.0
48 0.0
49 0.0
50 0.0
51 0.0
52 0.0
53 0.0
54 0.0
55 0.0
56 0.0
57 0.0
58 0.0
59 77.0
60 403.4
61 158.0
62 16.0
63 0.0
64 505.64
65 11.0
66 49.0
67 915.3
68 252.0
69 0.0
70 0.0
71 0.0
72 0.0
73 0.0
74 0.0
75 0.0
76 0.0
77 0.0
78 0.0
79 0.0
80 0.0
81 0.0
82 0.0
83 0.0
84 0.0
85 0.0
86 0.0
87 0.0
88 77.0
89 1100.0
90 158.0
91 16.0
92 0.0
93 700.0
94 11.0
95 49.0
96 2000.0
97 252.0
;

param u :=
1 77.01
2 1124.53 
3 158.01
4 16.01
5 0.0
6 783.66 
7 11.01 
8 49.01 
9 2155.18
10 252.01 
11 397.84
12 222.32 
13 205.63
14 205.63
15 205.63
16 124.83 
17 127.01 
18 61.08 
19 614.84
20 778.08 
21 3024.0
22 3024.0
23 3024.0
24 3024.0
25 7257.6
26 1209.6
27 907.2
28 7257.6
29 7257.6
30 77.0 
31 1312.0 
32 158.0 
33 16.0 
34 0.0
35 928.46
36 11.0 
37 49.0 
38 2611.6
39 252.0 
40 397.84
41 222.32
42 205.63
43 205.63
44 205.63
45 124.83 
46 127.01 
47 61.08 
48 614.84
49 778.08 
50 3024.0
51 3024.0
52 3024.0
53 3024.0
54 7257.6
55 1209.6
56 907.2
57 7257.6
58 7257.6
59 77.0 
60 1312.0 
61 158.0 
62 16.0 
63 0.0
64 928.46
65 11.0 
66 49.0 
67 2611.6
68 252.0 
69 397.84
70 222.32
71 205.63
72 205.63
73 205.63
74 124.83 
75 127.01 
76 61.08
77 614.84
78 778.08 
79 3024.0
80 3024.0
81 3024.0
82 3024.0
83 7257.6
84 1209.6
85 907.2
86 7257.6
87 7257.6
88 77.01
89 1100.01 
90 158.01
91 16.01
92 0.0
93 700.01 
94 11.01 
95 49.01 
96 2000.01 
97 252.01 
;

param x0 :=
1 77.0
2 1124.52
3 158.0
4 16.0
5 0.0
6 783.65
7 11.0
8 49.0
9 2155.17
10 252.0
11 51.38
12 140.21
13 142.79
14 21.91
15 164.7
16 58.19
17 58.19
18 61.08
19 566.43
20 583.57
21 0.0
22 0.0
23 0.0
24 0.0
25 0.0
26 0.0
27 0.0
28 0.0
29 0.0
30 77.0
31 1049.53
32 158.0
33 16.0
34 0.0
35 738.43
36 11.0
37 49.0
38 1835.36
39 252.0
40 32.06
41 0.0
42 4.2
43 48.37
44 52.57
45 59.85
46 59.85
47 58.24
48 0.0
49 18.76
50 0.0
51 0.0
52 0.0
53 0.0
54 0.0
55 0.0
56 0.0
57 0.0
58 0.0
59 77.0
60 1081.87
61 158.0
62 16.0
63 0.0
64 696.71
65 11.0
66 49.0
67 1972.77
68 252.0
69 18.13
70 0.0
71 0.0
72 18.13
73 18.13
74 5.81
75 5.81
76 0.0
77 0.0
78 6.02
79 0.0
80 0.0
81 0.0
82 0.0
83 0.0
84 0.0
85 0.0
86 0.0
87 0.0
88 77.0
89 1100.0
90 158.0
91 16.0
92 0.0
93 700.0
94 11.0
95 49.0
96 2000.0
97 252.0
;

solve;
display x;
display obj;
