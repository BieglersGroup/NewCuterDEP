#
#**************************
# SET UP THE INITIAL DATA *
#**************************
#   Problem :
#   *********
#   This problem models the planning of systematic use of water resources
#   in the basin of the river Dnieper.
#   Source: p. 139sq in 
#   B.N. Pshenichnyj
#   "The Linearization Method for Constrained Optimization",
#   Springer Verlag, SCM Series 22, Heidelberg, 1994
#   SIF input: Ph. Toint, December 1994.
#   classification QOR2-MN-61-24
#   Problem data
#   Constants
#   Objective function
#   Ensure maximization
#   Equality constraints
#   Solution
#XV SOLUTION  X1         5.14000D+01
#XV SOLUTION  X2         5.12000D+01
#XV SOLUTION  X3         5.14000D+01
#XV SOLUTION  X4         5.12000D+01
#XV SOLUTION  X5         5.14000D+01
#XV SOLUTION  X6         5.14000D+01
#XV SOLUTION  X7         5.14000D+01
#XV SOLUTION  X8         5.14000D+01
#XV SOLUTION  X9         5.14000D+01
#XV SOLUTION  X10        5.12000D+01
#XV SOLUTION  X11        5.14000D+01
#XV SOLUTION  X12        5.12000D+01
#XV SOLUTION  X13        1.53142D+01
#XV SOLUTION  X14        1.51879D+01
#XV SOLUTION  X15        1.51846D+01
#XV SOLUTION  X16        1.51650D+01
#XV SOLUTION  X17        1.51615D+01
#XV SOLUTION  X18        1.51495D+01
#XV SOLUTION  X19        1.51380D+01
#XV SOLUTION  X20        1.51238D+01
#XV SOLUTION  X21        1.50864D+01
#XV SOLUTION  X22        1.50690D+01
#XV SOLUTION  X23        1.50389D+01
#XV SOLUTION  X24        1.50000D+01
#XV SOLUTION  X25        2.18087D+00
#XV SOLUTION  X26        1.70780D+00
#XV SOLUTION  X27        6.18689D-01
#XV SOLUTION  X28        6.39532D-01
#XV SOLUTION  X29        4.00000D-01
#XV SOLUTION  X30        4.00000D-01
#XV SOLUTION  X31        4.00000D-01
#XV SOLUTION  X32        4.00000D-01
#XV SOLUTION  X33        8.04561D-01
#XV SOLUTION  X34        7.69470D-01
#XV SOLUTION  X35        9.15035D-01
#XV SOLUTION  X36        9.49886D-01
#XV SOLUTION  X37        5.00000D-01
#XV SOLUTION  X38        5.00000D-01
#XV SOLUTION  X39        5.00000D-01
#XV SOLUTION  X40        5.00000D-01
#XV SOLUTION  X41        5.00000D-01
#XV SOLUTION  X42        5.00000D-01
#XV SOLUTION  X43        5.00000D-01
#XV SOLUTION  X44        5.00000D-01
#XV SOLUTION  X45        5.00000D-01
#XV SOLUTION  X46        5.00000D-01
#XV SOLUTION  X47        5.00000D-01
#XV SOLUTION  X48        5.00000D-01
#XV SOLUTION  X49        4.23624D-01
#XV SOLUTION  X50        3.83582D-01
#XV SOLUTION  X51        3.42537D-01
#XV SOLUTION  X52        3.53731D-01
#XV SOLUTION  X53        0.00000D+00
#XV SOLUTION  X54        0.00000D+00
#XV SOLUTION  X55        0.00000D+00
#XV SOLUTION  X56        0.00000D+00
#XV SOLUTION  X0F        5.08200D+01
#XV SOLUTION  X24F       2.00000D+00
#XV SOLUTION  X12F       1.55000D+01
#XV SOLUTION  X36F       2.30000D+00
#XV SOLUTION  AC        -3.08411D+00
#   Objective function
#   Constraints
#   Objective groups
#   Constraint groups
#   Solution
	param c1 := 5.61;
	param c2 := 4.68;
	param c3 := 1.62;
	param c4 := 1.8;
	param c5 := 2.13;
	param c6 := 2.1;
	param c7 := 1.99;
	param c8 := 2.02;
	param c9 := 2.14;
	param c10 := 2.15;
	param c11 := 2.36;
	param c12 := 2.63;
	param c13 := -0.02;
	param c14 := -0.01;
	param c15 := -0.16;
	param c16 := -0.47;
	param c17 := -0.75;
	param c18 := -0.94;
	param c19 := -0.93;
	param c20 := -0.99;
	param c21 := -0.42;
	param c22 := -0.07;
	param c23 := 0.04;
	param c24 := -0.06;
	param i0 := 23 + (24);
	param i1 := -1 + (24);
	param i2 := 36 + (12);
	param cst := -1.0 * (-0.06);

	var x1 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x2 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x3 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x4 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x5 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x6 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x7 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x8 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x9 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x10 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x11 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x12 >= 51.2 ,  <= 51.4 ,  := 51.35;
	var x13 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x14 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x15 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x16 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x17 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x18 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x19 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x20 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x21 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x22 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x23 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x24 >= 15.0 ,  <= 16.1 ,  := 15.5;
	var x25 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x26 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x27 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x28 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x29 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x30 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x31 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x32 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x33 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x34 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x35 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x36 >= 0.4 ,  <= 4.6 ,  := 2.5;
	var x37 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x38 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x39 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x40 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x41 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x42 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x43 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x44 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x45 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x46 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x47 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x48 >= 0.5 ,  <= 4.8 ,  := 2.6;
	var x49 >= 0.0 ,  <= 0.7 ,  := 0.3;
	var x50 >= 0.0 ,  <= 0.7 ,  := 0.3;
	var x51 >= 0.0 ,  <= 0.7 ,  := 0.3;
	var x52 >= 0.0 ,  <= 0.7 ,  := 0.3;
	var x53 >= 0.0 ,  <= 0.7 ,  := 0.3;
	var x54 >= 0.0 ,  <= 0.7 ,  := 0.3;
	var x55 >= 0.0 ,  <= 0.7 ,  := 0.3;
	var x56 >= 0.0 ,  <= 0.7 ,  := 0.3;
	var x0f >= 50.82 ,  <= 50.82 ,  := 50.82;
	var x24f >= 2.0 ,  <= 2.0 ,  := 2.0;
	var x12f >= 15.5 ,  <= 15.5 ,  := 15.5;
	var x36f >= 2.3 ,  <= 2.3 ,  := 2.3;
	var ac := 0.0;

minimize obj:
	 - (2.155*x13 * x37 + 2.155*x14 * x38 + 2.155*x15 * x39 + 2.155*x16 * x40 + 
	2.155*x17 * x41 + 2.155*x18 * x42 + 2.155*x19 * x43 + 2.155*x20 * x44 + 
	2.155*x21 * x45 + 2.155*x22 * x46 + 2.155*x23 * x47 + 2.155*x24 * x48 - 
	2000.0*ac * ac + 19.95*x25 + 0.07656*x1 - 24.89*x37 - 0.7135*x13 + 19.95*x26 + 
	0.07656*x2 - 24.89*x38 - 0.7135*x14 + 19.95*x27 + 0.07656*x3 - 24.89*x39 - 
	0.7135*x15 + 19.95*x28 + 0.07656*x4 - 24.89*x40 - 0.7135*x16 + 19.95*x29 + 
	0.07656*x5 - 24.89*x41 - 0.7135*x17 + 19.95*x30 + 0.07656*x6 - 24.89*x42 - 
	0.7135*x18 + 19.95*x31 + 0.07656*x7 - 24.89*x43 - 0.7135*x19 + 19.95*x32 + 
	0.07656*x8 - 24.89*x44 - 0.7135*x20 + 19.95*x33 + 0.07656*x9 - 24.89*x45 - 
	0.7135*x21 + 19.95*x34 + 0.07656*x10 - 24.89*x46 - 0.7135*x22 + 19.95*x35 + 
	0.07656*x11 - 24.89*x47 - 0.7135*x23 + 19.95*x36 + 0.07656*x12 - 24.89*x48 - 
	0.7135*x24 + 112.464);

subject to cc1dep:
	((34.547) + (-0.55878) * x1 + (8.05339) * x25 + (-0.02252) * x1^2 + (-0.29316) * 
	x1 * x25 + (-0.013521) * x25^2 + (0.00042) * x1^3 + (0.00267) * x1^2 * x25 + 
	(0.000281) * x1 * x25^2 + (0.0000032) * x25^3 - ((34.547) + (-0.55878) * x0f + 
	(8.05339) * x24f + (-0.02252) * x0f^2 + (-0.29316) * x0f * x24f + (-0.013521) * 
	x24f^2 + (0.00042) * x0f^3 + (0.00267) * x0f^2 * x24f + (0.000281) * x0f * 
	x24f^2 + (0.0000032) * x24f^3) - 2.68*x25 + 5.61)
	-((34.547) + (-0.55878) * x1 + (8.05339) * x25 + (-0.02252) * x1^2 + (-0.29316) * 
	x1 * x25 + (-0.013521) * x25^2 + (0.00042) * x1^3 + (0.00267) * x1^2 * x25 + 
	(0.000281) * x1 * x25^2 + (0.0000032) * x25^3 - ((34.547) + (-0.55878) * x0f + 
	(8.05339) * x24f + (-0.02252) * x0f^2 + (-0.29316) * x0f * x24f + (-0.013521) * 
	x24f^2 + (0.00042) * x0f^3 + (0.00267) * x0f^2 * x24f + (0.000281) * x0f * 
	x24f^2 + (0.0000032) * x24f^3) - 2.68*x25 + 5.61)^2 = 100;
subject to cc1:
	(34.547) + (-0.55878) * x1 + (8.05339) * x25 + (-0.02252) * x1^2 + (-0.29316) * 
	x1 * x25 + (-0.013521) * x25^2 + (0.00042) * x1^3 + (0.00267) * x1^2 * x25 + 
	(0.000281) * x1 * x25^2 + (0.0000032) * x25^3 - ((34.547) + (-0.55878) * x0f + 
	(8.05339) * x24f + (-0.02252) * x0f^2 + (-0.29316) * x0f * x24f + (-0.013521) * 
	x24f^2 + (0.00042) * x0f^3 + (0.00267) * x0f^2 * x24f + (0.000281) * x0f * 
	x24f^2 + (0.0000032) * x24f^3) - 2.68*x25 + 5.61 = 0;
subject to cc2:
	(34.547) + (-0.55878) * x2 + (8.05339) * x26 + (-0.02252) * x2^2 + (-0.29316) * 
	x2 * x26 + (-0.013521) * x26^2 + (0.00042) * x2^3 + (0.00267) * x2^2 * x26 + 
	(0.000281) * x2 * x26^2 + (0.0000032) * x26^3 - ((34.547) + (-0.55878) * x1 + 
	(8.05339) * x25 + (-0.02252) * x1^2 + (-0.29316) * x1 * x25 + (-0.013521) * 
	x25^2 + (0.00042) * x1^3 + (0.00267) * x1^2 * x25 + (0.000281) * x1 * x25^2 + 
	(0.0000032) * x25^3) - 2.68*x26 + 4.68 = 0;
subject to cc3:
	(34.547) + (-0.55878) * x3 + (8.05339) * x27 + (-0.02252) * x3^2 + (-0.29316) * 
	x3 * x27 + (-0.013521) * x27^2 + (0.00042) * x3^3 + (0.00267) * x3^2 * x27 + 
	(0.000281) * x3 * x27^2 + (0.0000032) * x27^3 - ((34.547) + (-0.55878) * x2 + 
	(8.05339) * x26 + (-0.02252) * x2^2 + (-0.29316) * x2 * x26 + (-0.013521) * 
	x26^2 + (0.00042) * x2^3 + (0.00267) * x2^2 * x26 + (0.000281) * x2 * x26^2 + 
	(0.0000032) * x26^3) - 2.68*x27 + 1.62 = 0;
subject to cc4:
	(34.547) + (-0.55878) * x4 + (8.05339) * x28 + (-0.02252) * x4^2 + (-0.29316) * 
	x4 * x28 + (-0.013521) * x28^2 + (0.00042) * x4^3 + (0.00267) * x4^2 * x28 + 
	(0.000281) * x4 * x28^2 + (0.0000032) * x28^3 - ((34.547) + (-0.55878) * x3 + 
	(8.05339) * x27 + (-0.02252) * x3^2 + (-0.29316) * x3 * x27 + (-0.013521) * 
	x27^2 + (0.00042) * x3^3 + (0.00267) * x3^2 * x27 + (0.000281) * x3 * x27^2 + 
	(0.0000032) * x27^3) - 2.68*x28 + 1.8 = 0;
subject to cc5:
	(34.547) + (-0.55878) * x5 + (8.05339) * x29 + (-0.02252) * x5^2 + (-0.29316) * 
	x5 * x29 + (-0.013521) * x29^2 + (0.00042) * x5^3 + (0.00267) * x5^2 * x29 + 
	(0.000281) * x5 * x29^2 + (0.0000032) * x29^3 - ((34.547) + (-0.55878) * x4 + 
	(8.05339) * x28 + (-0.02252) * x4^2 + (-0.29316) * x4 * x28 + (-0.013521) * 
	x28^2 + (0.00042) * x4^3 + (0.00267) * x4^2 * x28 + (0.000281) * x4 * x28^2 + 
	(0.0000032) * x28^3) - 2.68*x29 - 2.68*x49 + 2.13 = 0;
subject to cc6:
	(34.547) + (-0.55878) * x6 + (8.05339) * x30 + (-0.02252) * x6^2 + (-0.29316) * 
	x6 * x30 + (-0.013521) * x30^2 + (0.00042) * x6^3 + (0.00267) * x6^2 * x30 + 
	(0.000281) * x6 * x30^2 + (0.0000032) * x30^3 - ((34.547) + (-0.55878) * x5 + 
	(8.05339) * x29 + (-0.02252) * x5^2 + (-0.29316) * x5 * x29 + (-0.013521) * 
	x29^2 + (0.00042) * x5^3 + (0.00267) * x5^2 * x29 + (0.000281) * x5 * x29^2 + 
	(0.0000032) * x29^3) - 2.68*x30 - 2.68*x50 + 2.1 = 0;
subject to cc7:
	(34.547) + (-0.55878) * x7 + (8.05339) * x31 + (-0.02252) * x7^2 + (-0.29316) * 
	x7 * x31 + (-0.013521) * x31^2 + (0.00042) * x7^3 + (0.00267) * x7^2 * x31 + 
	(0.000281) * x7 * x31^2 + (0.0000032) * x31^3 - ((34.547) + (-0.55878) * x6 + 
	(8.05339) * x30 + (-0.02252) * x6^2 + (-0.29316) * x6 * x30 + (-0.013521) * 
	x30^2 + (0.00042) * x6^3 + (0.00267) * x6^2 * x30 + (0.000281) * x6 * x30^2 + 
	(0.0000032) * x30^3) - 2.68*x31 - 2.68*x51 + 1.99 = 0;
subject to cc8:
	(34.547) + (-0.55878) * x8 + (8.05339) * x32 + (-0.02252) * x8^2 + (-0.29316) * 
	x8 * x32 + (-0.013521) * x32^2 + (0.00042) * x8^3 + (0.00267) * x8^2 * x32 + 
	(0.000281) * x8 * x32^2 + (0.0000032) * x32^3 - ((34.547) + (-0.55878) * x7 + 
	(8.05339) * x31 + (-0.02252) * x7^2 + (-0.29316) * x7 * x31 + (-0.013521) * 
	x31^2 + (0.00042) * x7^3 + (0.00267) * x7^2 * x31 + (0.000281) * x7 * x31^2 + 
	(0.0000032) * x31^3) - 2.68*x32 - 2.68*x52 + 2.02 = 0;
subject to cc9:
	(34.547) + (-0.55878) * x9 + (8.05339) * x33 + (-0.02252) * x9^2 + (-0.29316) * 
	x9 * x33 + (-0.013521) * x33^2 + (0.00042) * x9^3 + (0.00267) * x9^2 * x33 + 
	(0.000281) * x9 * x33^2 + (0.0000032) * x33^3 - ((34.547) + (-0.55878) * x8 + 
	(8.05339) * x32 + (-0.02252) * x8^2 + (-0.29316) * x8 * x32 + (-0.013521) * 
	x32^2 + (0.00042) * x8^3 + (0.00267) * x8^2 * x32 + (0.000281) * x8 * x32^2 + 
	(0.0000032) * x32^3) - 2.68*x33 + 2.14 = 0;
subject to cc10:
	(34.547) + (-0.55878) * x10 + (8.05339) * x34 + (-0.02252) * x10^2 + (-0.29316) 
	* x10 * x34 + (-0.013521) * x34^2 + (0.00042) * x10^3 + (0.00267) * x10^2 * x34 
	+ (0.000281) * x10 * x34^2 + (0.0000032) * x34^3 - ((34.547) + (-0.55878) * x9 + 
	(8.05339) * x33 + (-0.02252) * x9^2 + (-0.29316) * x9 * x33 + (-0.013521) * 
	x33^2 + (0.00042) * x9^3 + (0.00267) * x9^2 * x33 + (0.000281) * x9 * x33^2 + 
	(0.0000032) * x33^3) - 2.68*x34 + 2.15 = 0;
subject to cc11:
	(34.547) + (-0.55878) * x11 + (8.05339) * x35 + (-0.02252) * x11^2 + (-0.29316) 
	* x11 * x35 + (-0.013521) * x35^2 + (0.00042) * x11^3 + (0.00267) * x11^2 * x35 
	+ (0.000281) * x11 * x35^2 + (0.0000032) * x35^3 - ((34.547) + (-0.55878) * x10 
	+ (8.05339) * x34 + (-0.02252) * x10^2 + (-0.29316) * x10 * x34 + (-0.013521) * 
	x34^2 + (0.00042) * x10^3 + (0.00267) * x10^2 * x34 + (0.000281) * x10 * x34^2 
	+ (0.0000032) * x34^3) - 2.68*x35 + 2.36 = 0;
subject to cc12:
	(34.547) + (-0.55878) * x12 + (8.05339) * x36 + (-0.02252) * x12^2 + (-0.29316) 
	* x12 * x36 + (-0.013521) * x36^2 + (0.00042) * x12^3 + (0.00267) * x12^2 * x36 
	+ (0.000281) * x12 * x36^2 + (0.0000032) * x36^3 - ((34.547) + (-0.55878) * x11 
	+ (8.05339) * x35 + (-0.02252) * x11^2 + (-0.29316) * x11 * x35 + (-0.013521) * 
	x35^2 + (0.00042) * x11^3 + (0.00267) * x11^2 * x35 + (0.000281) * x11 * x35^2 
	+ (0.0000032) * x35^3) - 2.68*x36 + 2.63 = 0;
subject to cc13:
	(20.923) + (-4.22088) * x13 + (1.42061) * x37 + (-0.41040) * x13^2 + (-0.15082) 
	* x13 * x37 + (-0.00826) * x13^3 + (0.00404) * x13^2 * x37 + (0.000168) * x13 * 
	x37^2 + (-0.000038) * x37^3 - ((20.923) + (-4.22088) * x12f + (1.42061) * x36f + 
	(-0.41040) * x12f^2 + (-0.15082) * x12f * x36f + (-0.00826) * x12f^3 + 
	(0.00404) * x12f^2 * x36f + (0.000168) * x12f * x36f^2 + (-0.000038) * x36f^3) - 
	2.68*x25 - 2.68*x37 - ac - 0.02 = 0;
subject to cc14:
	(20.923) + (-4.22088) * x14 + (1.42061) * x38 + (-0.41040) * x14^2 + (-0.15082) 
	* x14 * x38 + (-0.00826) * x14^3 + (0.00404) * x14^2 * x38 + (0.000168) * x14 * 
	x38^2 + (-0.000038) * x38^3 - ((20.923) + (-4.22088) * x13 + (1.42061) * x37 + 
	(-0.41040) * x13^2 + (-0.15082) * x13 * x37 + (-0.00826) * x13^3 + (0.00404) * 
	x13^2 * x37 + (0.000168) * x13 * x37^2 + (-0.000038) * x37^3) - 2.68*x26 - 
	2.68*x38 - ac - 0.01 = 0;
subject to cc15:
	(20.923) + (-4.22088) * x15 + (1.42061) * x39 + (-0.41040) * x15^2 + (-0.15082) 
	* x15 * x39 + (-0.00826) * x15^3 + (0.00404) * x15^2 * x39 + (0.000168) * x15 * 
	x39^2 + (-0.000038) * x39^3 - ((20.923) + (-4.22088) * x14 + (1.42061) * x38 + 
	(-0.41040) * x14^2 + (-0.15082) * x14 * x38 + (-0.00826) * x14^3 + (0.00404) * 
	x14^2 * x38 + (0.000168) * x14 * x38^2 + (-0.000038) * x38^3) - 2.68*x27 - 
	2.68*x39 - ac - 0.16 = 0;
subject to cc16:
	(20.923) + (-4.22088) * x16 + (1.42061) * x40 + (-0.41040) * x16^2 + (-0.15082) 
	* x16 * x40 + (-0.00826) * x16^3 + (0.00404) * x16^2 * x40 + (0.000168) * x16 * 
	x40^2 + (-0.000038) * x40^3 - ((20.923) + (-4.22088) * x15 + (1.42061) * x39 + 
	(-0.41040) * x15^2 + (-0.15082) * x15 * x39 + (-0.00826) * x15^3 + (0.00404) * 
	x15^2 * x39 + (0.000168) * x15 * x39^2 + (-0.000038) * x39^3) - 2.68*x28 - 
	2.68*x40 - ac - 0.47 = 0;
subject to cc17:
	(20.923) + (-4.22088) * x17 + (1.42061) * x41 + (-0.41040) * x17^2 + (-0.15082) 
	* x17 * x41 + (-0.00826) * x17^3 + (0.00404) * x17^2 * x41 + (0.000168) * x17 * 
	x41^2 + (-0.000038) * x41^3 - ((20.923) + (-4.22088) * x16 + (1.42061) * x40 + 
	(-0.41040) * x16^2 + (-0.15082) * x16 * x40 + (-0.00826) * x16^3 + (0.00404) * 
	x16^2 * x40 + (0.000168) * x16 * x40^2 + (-0.000038) * x40^3) - 2.68*x29 - 
	2.68*x41 - 2.68*x53 - ac - 0.75 = 0;
subject to cc18:
	(20.923) + (-4.22088) * x18 + (1.42061) * x42 + (-0.41040) * x18^2 + (-0.15082) 
	* x18 * x42 + (-0.00826) * x18^3 + (0.00404) * x18^2 * x42 + (0.000168) * x18 * 
	x42^2 + (-0.000038) * x42^3 - ((20.923) + (-4.22088) * x17 + (1.42061) * x41 + 
	(-0.41040) * x17^2 + (-0.15082) * x17 * x41 + (-0.00826) * x17^3 + (0.00404) * 
	x17^2 * x41 + (0.000168) * x17 * x41^2 + (-0.000038) * x41^3) - 2.68*x30 - 
	2.68*x42 - 2.68*x54 - ac - 0.94 = 0;
subject to cc19:
	(20.923) + (-4.22088) * x19 + (1.42061) * x43 + (-0.41040) * x19^2 + (-0.15082) 
	* x19 * x43 + (-0.00826) * x19^3 + (0.00404) * x19^2 * x43 + (0.000168) * x19 * 
	x43^2 + (-0.000038) * x43^3 - ((20.923) + (-4.22088) * x18 + (1.42061) * x42 + 
	(-0.41040) * x18^2 + (-0.15082) * x18 * x42 + (-0.00826) * x18^3 + (0.00404) * 
	x18^2 * x42 + (0.000168) * x18 * x42^2 + (-0.000038) * x42^3) - 2.68*x31 - 
	2.68*x43 - 2.68*x55 - ac - 0.93 = 0;
subject to cc20:
	(20.923) + (-4.22088) * x20 + (1.42061) * x44 + (-0.41040) * x20^2 + (-0.15082) 
	* x20 * x44 + (-0.00826) * x20^3 + (0.00404) * x20^2 * x44 + (0.000168) * x20 * 
	x44^2 + (-0.000038) * x44^3 - ((20.923) + (-4.22088) * x19 + (1.42061) * x43 + 
	(-0.41040) * x19^2 + (-0.15082) * x19 * x43 + (-0.00826) * x19^3 + (0.00404) * 
	x19^2 * x43 + (0.000168) * x19 * x43^2 + (-0.000038) * x43^3) - 2.68*x32 - 
	2.68*x44 - 2.68*x56 - ac - 0.99 = 0;
subject to cc21:
	(20.923) + (-4.22088) * x21 + (1.42061) * x45 + (-0.41040) * x21^2 + (-0.15082) 
	* x21 * x45 + (-0.00826) * x21^3 + (0.00404) * x21^2 * x45 + (0.000168) * x21 * 
	x45^2 + (-0.000038) * x45^3 - ((20.923) + (-4.22088) * x20 + (1.42061) * x44 + 
	(-0.41040) * x20^2 + (-0.15082) * x20 * x44 + (-0.00826) * x20^3 + (0.00404) * 
	x20^2 * x44 + (0.000168) * x20 * x44^2 + (-0.000038) * x44^3) - 2.68*x33 - 
	2.68*x45 - ac - 0.42 = 0;
subject to cc22:
	(20.923) + (-4.22088) * x22 + (1.42061) * x46 + (-0.41040) * x22^2 + (-0.15082) 
	* x22 * x46 + (-0.00826) * x22^3 + (0.00404) * x22^2 * x46 + (0.000168) * x22 * 
	x46^2 + (-0.000038) * x46^3 - ((20.923) + (-4.22088) * x21 + (1.42061) * x45 + 
	(-0.41040) * x21^2 + (-0.15082) * x21 * x45 + (-0.00826) * x21^3 + (0.00404) * 
	x21^2 * x45 + (0.000168) * x21 * x45^2 + (-0.000038) * x45^3) - 2.68*x34 - 
	2.68*x46 - ac - 0.07 = 0;
subject to cc23:
	(20.923) + (-4.22088) * x23 + (1.42061) * x47 + (-0.41040) * x23^2 + (-0.15082) 
	* x23 * x47 + (-0.00826) * x23^3 + (0.00404) * x23^2 * x47 + (0.000168) * x23 * 
	x47^2 + (-0.000038) * x47^3 - ((20.923) + (-4.22088) * x22 + (1.42061) * x46 + 
	(-0.41040) * x22^2 + (-0.15082) * x22 * x46 + (-0.00826) * x22^3 + (0.00404) * 
	x22^2 * x46 + (0.000168) * x22 * x46^2 + (-0.000038) * x46^3) - 2.68*x35 - 
	2.68*x47 - ac + 0.04 = 0;
subject to cc24:
	(20.923) + (-4.22088) * x24 + (1.42061) * x48 + (-0.41040) * x24^2 + (-0.15082) 
	* x24 * x48 + (-0.00826) * x24^3 + (0.00404) * x24^2 * x48 + (0.000168) * x24 * 
	x48^2 + (-0.000038) * x48^3 - ((20.923) + (-4.22088) * x23 + (1.42061) * x47 + 
	(-0.41040) * x23^2 + (-0.15082) * x23 * x47 + (-0.00826) * x23^3 + (0.00404) * 
	x23^2 * x47 + (0.000168) * x23 * x47^2 + (-0.000038) * x47^3) - 2.68*x36 - 
	2.68*x48 - ac - 0.06 = 0;

solve;
	display x1;
	display x2;
	display x3;
	display x4;
	display x5;
	display x6;
	display x7;
	display x8;
	display x9;
	display x10;
	display x11;
	display x12;
	display x13;
	display x14;
	display x15;
	display x16;
	display x17;
	display x18;
	display x19;
	display x20;
	display x21;
	display x22;
	display x23;
	display x24;
	display x25;
	display x26;
	display x27;
	display x28;
	display x29;
	display x30;
	display x31;
	display x32;
	display x33;
	display x34;
	display x35;
	display x36;
	display x37;
	display x38;
	display x39;
	display x40;
	display x41;
	display x42;
	display x43;
	display x44;
	display x45;
	display x46;
	display x47;
	display x48;
	display x49;
	display x50;
	display x51;
	display x52;
	display x53;
	display x54;
	display x55;
	display x56;
	display x0f;
	display x24f;
	display x12f;
	display x36f;
	display ac;
display obj;
