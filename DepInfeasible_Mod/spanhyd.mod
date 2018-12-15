#
#**************************
# SET UP THE INITIAL DATA *
#**************************
#   Problem :
#   *********
#   The spanish hydro-electric reservoir management problem
#   The problem is also named "HYD33" in some references.
#   This is a nonlinear network problem
#   Source:
#   J.L. de la Fuente,
#   "Programacion no-lineal: applicationes en analisis, gestion y
#   planificacion de sistemas electricos",
#   Hidroelectrica Espanola, private communication, 1986.
#   SIF input: Ph. Toint, Sept 1990.
#   classification ONR2-RN-97-33
#   Number of arcs    = 97
#   Number of nodes
#   Constants
#   Problem parameters
#   Objective
#   Network constraints
#   Network arcs
#   Solution
	param nodes := 33;
	param p1a := 85.459510678;
	param p2a := -6.255270637;
	param p3a := 1.0862222572;
	param p1b := 81.978824852;
	param p2b := -6.021899007;
	param p3b := 8.4278676858;
	param p1c := 83.420024838;
	param p2c := -6.08910295;
	param p3c := 8.9209611766;

	var x1 >= 77.0 ,  <= 77.00999999999999 ,  := 77.0;
	var x2 >= 1124.52 ,  <= 1124.53 ,  := 1124.52;
	var x3 >= 158.0 ,  <= 158.01000000000002 ,  := 158.0;
	var x4 >= 16.0 ,  <= 16.009999999999998 ,  := 16.0;
	var x5 >= 0.0 ,  <= 0.0;
	var x6 >= 783.65 ,  <= 783.66 ,  := 783.65;
	var x7 >= 11.0 ,  <= 11.01 ,  := 11.0;
	var x8 >= 49.0 ,  <= 49.01 ,  := 49.0;
	var x9 >= 2155.17 ,  <= 2155.1800000000003 ,  := 2155.17;
	var x10 >= 252.0 ,  <= 252.01 ,  := 252.0;
	var x11 >= 0.0 ,  <= 397.84000000000003 ,  := 51.379999999999995;
	var x12 >= 0.0 ,  <= 222.32 ,  := 140.20999999999998;
	var x13 >= 0.0 ,  <= 205.62999999999997 ,  := 142.79;
	var x14 >= 0.0 ,  <= 205.62999999999997 ,  := 21.909999999999997;
	var x15 >= 0.0 ,  <= 205.62999999999997 ,  := 164.7;
	var x16 >= 0.0 ,  <= 124.83 ,  := 58.19;
	var x17 >= 0.0 ,  <= 127.01 ,  := 58.19;
	var x18 >= 0.0 ,  <= 61.08 ,  := 61.08;
	var x19 >= 0.0 ,  <= 614.8399999999999 ,  := 566.43;
	var x20 >= 0.0 ,  <= 778.08 ,  := 583.57;
	var x21 >= 0.0 ,  <= 3024.0;
	var x22 >= 0.0 ,  <= 3024.0;
	var x23 >= 0.0 ,  <= 3024.0;
	var x24 >= 0.0 ,  <= 3024.0;
	var x25 >= 0.0 ,  <= 7257.6;
	var x26 >= 0.0 ,  <= 1209.6;
	var x27 >= 0.0 ,  <= 907.1999999999999;
	var x28 >= 0.0 ,  <= 7257.6;
	var x29 >= 0.0 ,  <= 7257.6;
	var x30 >= 77.0 ,  <= 77.0 ,  := 77.0;
	var x31 >= 403.4 ,  <= 1312.0 ,  := 1049.53;
	var x32 >= 158.0 ,  <= 158.0 ,  := 158.0;
	var x33 >= 16.0 ,  <= 16.0 ,  := 16.0;
	var x34 >= 0.0 ,  <= 0.0;
	var x35 >= 501.99999999999994 ,  <= 928.4599999999999 ,  := 738.43;
	var x36 >= 11.0 ,  <= 11.0 ,  := 11.0;
	var x37 >= 49.0 ,  <= 49.0 ,  := 49.0;
	var x38 >= 915.3000000000001 ,  <= 2611.6000000000004 ,  := 1835.3600000000001;
	var x39 >= 252.0 ,  <= 252.0 ,  := 252.0;
	var x40 >= 0.0 ,  <= 397.84000000000003 ,  := 32.06;
	var x41 >= 0.0 ,  <= 222.32;
	var x42 >= 0.0 ,  <= 205.62999999999997 ,  := 4.2;
	var x43 >= 0.0 ,  <= 205.62999999999997 ,  := 48.37;
	var x44 >= 0.0 ,  <= 205.62999999999997 ,  := 52.56999999999999;
	var x45 >= 0.0 ,  <= 124.83 ,  := 59.85;
	var x46 >= 0.0 ,  <= 127.01 ,  := 59.85;
	var x47 >= 0.0 ,  <= 61.08 ,  := 58.239999999999995;
	var x48 >= 0.0 ,  <= 614.8399999999999;
	var x49 >= 0.0 ,  <= 778.08 ,  := 18.759999999999998;
	var x50 >= 0.0 ,  <= 3024.0;
	var x51 >= 0.0 ,  <= 3024.0;
	var x52 >= 0.0 ,  <= 3024.0;
	var x53 >= 0.0 ,  <= 3024.0;
	var x54 >= 0.0 ,  <= 7257.6;
	var x55 >= 0.0 ,  <= 1209.6;
	var x56 >= 0.0 ,  <= 907.1999999999999;
	var x57 >= 0.0 ,  <= 7257.6;
	var x58 >= 0.0 ,  <= 7257.6;
	var x59 >= 77.0 ,  <= 77.0 ,  := 77.0;
	var x60 >= 403.4 ,  <= 1312.0 ,  := 1081.8700000000001;
	var x61 >= 158.0 ,  <= 158.0 ,  := 158.0;
	var x62 >= 16.0 ,  <= 16.0 ,  := 16.0;
	var x63 >= 0.0 ,  <= 0.0;
	var x64 >= 505.64 ,  <= 928.4599999999999 ,  := 696.71;
	var x65 >= 11.0 ,  <= 11.0 ,  := 11.0;
	var x66 >= 49.0 ,  <= 49.0 ,  := 49.0;
	var x67 >= 915.3000000000001 ,  <= 2611.6000000000004 ,  := 1972.77;
	var x68 >= 252.0 ,  <= 252.0 ,  := 252.0;
	var x69 >= 0.0 ,  <= 397.84000000000003 ,  := 18.13;
	var x70 >= 0.0 ,  <= 222.32;
	var x71 >= 0.0 ,  <= 205.62999999999997;
	var x72 >= 0.0 ,  <= 205.62999999999997 ,  := 18.13;
	var x73 >= 0.0 ,  <= 205.62999999999997 ,  := 18.13;
	var x74 >= 0.0 ,  <= 124.83 ,  := 5.81;
	var x75 >= 0.0 ,  <= 127.01 ,  := 5.81;
	var x76 >= 0.0 ,  <= 61.08;
	var x77 >= 0.0 ,  <= 614.8399999999999;
	var x78 >= 0.0 ,  <= 778.08 ,  := 6.02;
	var x79 >= 0.0 ,  <= 3024.0;
	var x80 >= 0.0 ,  <= 3024.0;
	var x81 >= 0.0 ,  <= 3024.0;
	var x82 >= 0.0 ,  <= 3024.0;
	var x83 >= 0.0 ,  <= 7257.6;
	var x84 >= 0.0 ,  <= 1209.6;
	var x85 >= 0.0 ,  <= 907.1999999999999;
	var x86 >= 0.0 ,  <= 7257.6;
	var x87 >= 0.0 ,  <= 7257.6;
	var x88 >= 77.0 ,  <= 77.00999999999999 ,  := 77.0;
	var x89 >= 1100.0 ,  <= 1100.01 ,  := 1100.0;
	var x90 >= 158.0 ,  <= 158.01000000000002 ,  := 158.0;
	var x91 >= 16.0 ,  <= 16.009999999999998 ,  := 16.0;
	var x92 >= 0.0 ,  <= 0.0;
	var x93 >= 700.0 ,  <= 700.01 ,  := 700.0;
	var x94 >= 11.0 ,  <= 11.01 ,  := 11.0;
	var x95 >= 49.0 ,  <= 49.01 ,  := 49.0;
	var x96 >= 2000.0 ,  <= 2000.01 ,  := 2000.0;
	var x97 >= 252.0 ,  <= 252.01 ,  := 252.0;

minimize obj:
	85.459510678 + -6.255270637 * 
	(x11*((-637.993)+(2.02)*(344.904)+(0.1265)*x1+(-2.5225d-4)*x1*x1)+x12*((-15.4452)+(2.57)*(((283.67)+(0.031)*x2+(-7.2d-6)*x2*x2)-((188.597)+(0.558)*x3+(-1.4052d-3)*x3*x3)))+x13*(-6.2597)+(2.2146)*(((188.597)+(0.558)*x3+(-1.4052d-3)*x3*x3)-((163.013)+(0.0262)*x9+(-2.4d-6)*x9*x9))+x14*((-2.8699)+(2.5128)*(((212.864)+(0.7584)*x4+(-1.4353d-2)*x4*x4)-((163.013)+(0.0262)*x9+(-2.4d-6)*x9*x9)))+x16*((-8.6773)+(2.5707)*(((353.204)+(0.0541)*x6+(-2.01d-5)*x6*x6)-((316.895)+(0.9038)*x7+(1.4139d-3)*x7*x7)))+x17*(-8.9261)+(2.7601)*(((316.895)+(0.9038)*x7+(1.4139d-3)*x7*x7)-((295.055)+(0.1557)*x8+(1.7195d-3)*x8*x8))+x18*((-672.26)+(2.5402)*(295.055)+(0.1557)*x8+(1.7195d-3)*x8*x8)+x19*((-334.117)+(2.711)*(163.013)+(0.0262)*x9+(-2.4d-6)*x9*x9)+x20*(-205.321)+(2.6673)*(107.338)+(-0.3111)*x10+(2.372d-4)*x10*x10) + 1.0862222572 * 
	(x11*((-637.993)+(2.02)*(344.904)+(0.1265)*x1+(-2.5225d-4)*x1*x1)+x12*((-15.4452)+(2.57)*(((283.67)+(0.031)*x2+(-7.2d-6)*x2*x2)-((188.597)+(0.558)*x3+(-1.4052d-3)*x3*x3)))+x13*(-6.2597)+(2.2146)*(((188.597)+(0.558)*x3+(-1.4052d-3)*x3*x3)-((163.013)+(0.0262)*x9+(-2.4d-6)*x9*x9))+x14*((-2.8699)+(2.5128)*(((212.864)+(0.7584)*x4+(-1.4353d-2)*x4*x4)-((163.013)+(0.0262)*x9+(-2.4d-6)*x9*x9)))+x16*((-8.6773)+(2.5707)*(((353.204)+(0.0541)*x6+(-2.01d-5)*x6*x6)-((316.895)+(0.9038)*x7+(1.4139d-3)*x7*x7)))+x17*(-8.9261)+(2.7601)*(((316.895)+(0.9038)*x7+(1.4139d-3)*x7*x7)-((295.055)+(0.1557)*x8+(1.7195d-3)*x8*x8))+x18*((-672.26)+(2.5402)*(295.055)+(0.1557)*x8+(1.7195d-3)*x8*x8)+x19*((-334.117)+(2.711)*(163.013)+(0.0262)*x9+(-2.4d-6)*x9*x9)+x20*(-205.321)+(2.6673)*(107.338)+(-0.3111)*x10+(2.372d-4)*x10*x10) * 
	(x11*((-637.993)+(2.02)*(344.904)+(0.1265)*x1+(-2.5225d-4)*x1*x1)+x12*((-15.4452)+(2.57)*(((283.67)+(0.031)*x2+(-7.2d-6)*x2*x2)-((188.597)+(0.558)*x3+(-1.4052d-3)*x3*x3)))+x13*(-6.2597)+(2.2146)*(((188.597)+(0.558)*x3+(-1.4052d-3)*x3*x3)-((163.013)+(0.0262)*x9+(-2.4d-6)*x9*x9))+x14*((-2.8699)+(2.5128)*(((212.864)+(0.7584)*x4+(-1.4353d-2)*x4*x4)-((163.013)+(0.0262)*x9+(-2.4d-6)*x9*x9)))+x16*((-8.6773)+(2.5707)*(((353.204)+(0.0541)*x6+(-2.01d-5)*x6*x6)-((316.895)+(0.9038)*x7+(1.4139d-3)*x7*x7)))+x17*(-8.9261)+(2.7601)*(((316.895)+(0.9038)*x7+(1.4139d-3)*x7*x7)-((295.055)+(0.1557)*x8+(1.7195d-3)*x8*x8))+x18*((-672.26)+(2.5402)*(295.055)+(0.1557)*x8+(1.7195d-3)*x8*x8)+x19*((-334.117)+(2.711)*(163.013)+(0.0262)*x9+(-2.4d-6)*x9*x9)+x20*(-205.321)+(2.6673)*(107.338)+(-0.3111)*x10+(2.372d-4)*x10*x10) + 81.978824852 + -6.021899007 * 
	(x40*((-637.993)+(2.02)*(344.904)+(0.1265)*x30+(-2.5225d-4)*x30*x30)+x41*((-15.4452)+(2.57)*(((283.67)+(0.031)*x31+(-7.2d-6)*x31*x31)-((188.597)+(0.558)*x32+(-1.4052d-3)*x32*x32)))+x42*(-6.2597)+(2.2146)*(((188.597)+(0.558)*x32+(-1.4052d-3)*x32*x32)-((163.013)+(0.0262)*x38+(-2.4d-6)*x38*x38))+x43*((-2.8699)+(2.5128)*(((212.864)+(0.7584)*x33+(-1.4353d-2)*x33*x33)-((163.013)+(0.0262)*x38+(-2.4d-6)*x38*x38)))+x45*((-8.6773)+(2.5707)*(((353.204)+(0.0541)*x35+(-2.01d-5)*x35*x35)-((316.895)+(0.9038)*x36+(1.4139d-3)*x36*x36)))+x46*(-8.9261)+(2.7601)*(((316.895)+(0.9038)*x36+(1.4139d-3)*x36*x36)-((295.055)+(0.1557)*x37+(1.7195d-3)*x37*x37))+x47*((-672.26)+(2.5402)*(295.055)+(0.1557)*x37+(1.7195d-3)*x37*x37)+x48*((-334.117)+(2.711)*(163.013)+(0.0262)*x38+(-2.4d-6)*x38*x38)+x49*(-205.321)+(2.6673)*(107.338)+(-0.3111)*x39+(2.372d-4)*x39*x39) + 8.4278676858 * 
	(x40*((-637.993)+(2.02)*(344.904)+(0.1265)*x30+(-2.5225d-4)*x30*x30)+x41*((-15.4452)+(2.57)*(((283.67)+(0.031)*x31+(-7.2d-6)*x31*x31)-((188.597)+(0.558)*x32+(-1.4052d-3)*x32*x32)))+x42*(-6.2597)+(2.2146)*(((188.597)+(0.558)*x32+(-1.4052d-3)*x32*x32)-((163.013)+(0.0262)*x38+(-2.4d-6)*x38*x38))+x43*((-2.8699)+(2.5128)*(((212.864)+(0.7584)*x33+(-1.4353d-2)*x33*x33)-((163.013)+(0.0262)*x38+(-2.4d-6)*x38*x38)))+x45*((-8.6773)+(2.5707)*(((353.204)+(0.0541)*x35+(-2.01d-5)*x35*x35)-((316.895)+(0.9038)*x36+(1.4139d-3)*x36*x36)))+x46*(-8.9261)+(2.7601)*(((316.895)+(0.9038)*x36+(1.4139d-3)*x36*x36)-((295.055)+(0.1557)*x37+(1.7195d-3)*x37*x37))+x47*((-672.26)+(2.5402)*(295.055)+(0.1557)*x37+(1.7195d-3)*x37*x37)+x48*((-334.117)+(2.711)*(163.013)+(0.0262)*x38+(-2.4d-6)*x38*x38)+x49*(-205.321)+(2.6673)*(107.338)+(-0.3111)*x39+(2.372d-4)*x39*x39) * 
	(x40*((-637.993)+(2.02)*(344.904)+(0.1265)*x30+(-2.5225d-4)*x30*x30)+x41*((-15.4452)+(2.57)*(((283.67)+(0.031)*x31+(-7.2d-6)*x31*x31)-((188.597)+(0.558)*x32+(-1.4052d-3)*x32*x32)))+x42*(-6.2597)+(2.2146)*(((188.597)+(0.558)*x32+(-1.4052d-3)*x32*x32)-((163.013)+(0.0262)*x38+(-2.4d-6)*x38*x38))+x43*((-2.8699)+(2.5128)*(((212.864)+(0.7584)*x33+(-1.4353d-2)*x33*x33)-((163.013)+(0.0262)*x38+(-2.4d-6)*x38*x38)))+x45*((-8.6773)+(2.5707)*(((353.204)+(0.0541)*x35+(-2.01d-5)*x35*x35)-((316.895)+(0.9038)*x36+(1.4139d-3)*x36*x36)))+x46*(-8.9261)+(2.7601)*(((316.895)+(0.9038)*x36+(1.4139d-3)*x36*x36)-((295.055)+(0.1557)*x37+(1.7195d-3)*x37*x37))+x47*((-672.26)+(2.5402)*(295.055)+(0.1557)*x37+(1.7195d-3)*x37*x37)+x48*((-334.117)+(2.711)*(163.013)+(0.0262)*x38+(-2.4d-6)*x38*x38)+x49*(-205.321)+(2.6673)*(107.338)+(-0.3111)*x39+(2.372d-4)*x39*x39) + 83.420024838 + -6.08910295 * 
	(x69*((-637.993)+(2.02)*(344.904)+(0.1265)*x59+(-2.5225d-4)*x59*x59)+x70*((-15.4452)+(2.57)*(((283.67)+(0.031)*x60+(-7.2d-6)*x60*x60)-((188.597)+(0.558)*x61+(-1.4052d-3)*x61*x61)))+x71*(-6.2597)+(2.2146)*(((188.597)+(0.558)*x61+(-1.4052d-3)*x61*x61)-((163.013)+(0.0262)*x67+(-2.4d-6)*x67*x67))+x72*((-2.8699)+(2.5128)*(((212.864)+(0.7584)*x62+(-1.4353d-2)*x62*x62)-((163.013)+(0.0262)*x67+(-2.4d-6)*x67*x67)))+x74*((-8.6773)+(2.5707)*(((353.204)+(0.0541)*x64+(-2.01d-5)*x64*x64)-((316.895)+(0.9038)*x65+(1.4139d-3)*x65*x65)))+x75*(-8.9261)+(2.7601)*(((316.895)+(0.9038)*x65+(1.4139d-3)*x65*x65)-((295.055)+(0.1557)*x66+(1.7195d-3)*x66*x66))+x76*((-672.26)+(2.5402)*(295.055)+(0.1557)*x66+(1.7195d-3)*x66*x66)+x77*((-334.117)+(2.711)*(163.013)+(0.0262)*x67+(-2.4d-6)*x67*x67)+x78*(-205.321)+(2.6673)*(107.338)+(-0.3111)*x68+(2.372d-4)*x68*x68) + 8.9209611766 * 
	(x69*((-637.993)+(2.02)*(344.904)+(0.1265)*x59+(-2.5225d-4)*x59*x59)+x70*((-15.4452)+(2.57)*(((283.67)+(0.031)*x60+(-7.2d-6)*x60*x60)-((188.597)+(0.558)*x61+(-1.4052d-3)*x61*x61)))+x71*(-6.2597)+(2.2146)*(((188.597)+(0.558)*x61+(-1.4052d-3)*x61*x61)-((163.013)+(0.0262)*x67+(-2.4d-6)*x67*x67))+x72*((-2.8699)+(2.5128)*(((212.864)+(0.7584)*x62+(-1.4353d-2)*x62*x62)-((163.013)+(0.0262)*x67+(-2.4d-6)*x67*x67)))+x74*((-8.6773)+(2.5707)*(((353.204)+(0.0541)*x64+(-2.01d-5)*x64*x64)-((316.895)+(0.9038)*x65+(1.4139d-3)*x65*x65)))+x75*(-8.9261)+(2.7601)*(((316.895)+(0.9038)*x65+(1.4139d-3)*x65*x65)-((295.055)+(0.1557)*x66+(1.7195d-3)*x66*x66))+x76*((-672.26)+(2.5402)*(295.055)+(0.1557)*x66+(1.7195d-3)*x66*x66)+x77*((-334.117)+(2.711)*(163.013)+(0.0262)*x67+(-2.4d-6)*x67*x67)+x78*(-205.321)+(2.6673)*(107.338)+(-0.3111)*x68+(2.372d-4)*x68*x68) * 
	(x69*((-637.993)+(2.02)*(344.904)+(0.1265)*x59+(-2.5225d-4)*x59*x59)+x70*((-15.4452)+(2.57)*(((283.67)+(0.031)*x60+(-7.2d-6)*x60*x60)-((188.597)+(0.558)*x61+(-1.4052d-3)*x61*x61)))+x71*(-6.2597)+(2.2146)*(((188.597)+(0.558)*x61+(-1.4052d-3)*x61*x61)-((163.013)+(0.0262)*x67+(-2.4d-6)*x67*x67))+x72*((-2.8699)+(2.5128)*(((212.864)+(0.7584)*x62+(-1.4353d-2)*x62*x62)-((163.013)+(0.0262)*x67+(-2.4d-6)*x67*x67)))+x74*((-8.6773)+(2.5707)*(((353.204)+(0.0541)*x64+(-2.01d-5)*x64*x64)-((316.895)+(0.9038)*x65+(1.4139d-3)*x65*x65)))+x75*(-8.9261)+(2.7601)*(((316.895)+(0.9038)*x65+(1.4139d-3)*x65*x65)-((295.055)+(0.1557)*x66+(1.7195d-3)*x66*x66))+x76*((-672.26)+(2.5402)*(295.055)+(0.1557)*x66+(1.7195d-3)*x66*x66)+x77*((-334.117)+(2.711)*(163.013)+(0.0262)*x67+(-2.4d-6)*x67*x67)+x78*(-205.321)+(2.6673)*(107.338)+(-0.3111)*x68+(2.372d-4)*x68*x68);

subject to n1dep:
	(x1 - x11 - x21 - x30 + 51.379999999999995)
	-(x1 - x11 - x21 - x30 + 51.379999999999995)^2 = 100;
subject to n1:
	x1 - x11 - x21 - x30 + 51.379999999999995 = 0;
subject to n2:
	x2 + x11 - x12 + x21 - x22 - x31 + 13.84 = 0;
subject to n3:
	x3 + x12 - x13 + x22 - x23 - x32 + 2.58 = 0;
subject to n4:
	x4 - x14 - x24 - x33 + 21.909999999999997 = 0;
subject to n5:
	x5 + x13 + x14 - x15 - x34 = 0;
subject to n6:
	x6 - x16 - x25 - x35 + 12.969999999999999 = 0;
subject to n7:
	x7 + x16 - x17 + x25 - x26 - x36 = 0;
subject to n8:
	x8 + x17 - x18 + x26 - x27 - x37 + 2.89 = 0;
subject to n9:
	x9 + x15 + x18 - x19 + x23 + x24 + x27 - x28 - x38 + 20.84 = 0;
subject to n10:
	x10 + x19 - x20 + x28 - x29 - x39 + 17.14 = 0;
subject to n11:
	x30 - x40 - x50 - x59 + 32.06 = 0;
subject to n12:
	x31 + x40 - x41 + x50 - x51 - x60 + 0.27999999999999997 = 0;
subject to n13:
	x32 + x41 - x42 + x51 - x52 - x61 + 4.2 = 0;
subject to n14:
	x33 - x43 - x53 - x62 + 48.37 = 0;
subject to n15:
	x34 + x42 + x43 - x44 - x63 = 0;
subject to n16:
	x35 - x45 - x54 - x64 + 18.13 = 0;
subject to n17:
	x36 + x45 - x46 + x54 - x55 - x65 = 0;
subject to n18:
	x37 + x46 - x47 + x55 - x56 - x66 - 1.61 = 0;
subject to n19:
	x38 + x44 + x47 - x48 + x52 + x53 + x56 - x57 - x67 + 26.6 = 0;
subject to n20:
	x39 + x48 - x49 + x57 - x58 - x68 + 18.759999999999998 = 0;
subject to n21:
	x59 - x69 - x79 - x88 + 18.13 = 0;
subject to n22:
	x60 + x69 - x70 + x79 - x80 - x89 = 0;
subject to n23:
	x61 + x70 - x71 + x80 - x81 - x90 = 0;
subject to n24:
	x62 - x72 - x82 - x91 + 18.13 = 0;
subject to n25:
	x63 + x71 + x72 - x73 - x92 = 0;
subject to n26:
	x64 - x74 - x83 - x93 + 9.1 = 0;
subject to n27:
	x65 + x74 - x75 + x83 - x84 - x94 = 0;
subject to n28:
	x66 + x75 - x76 + x84 - x85 - x95 - 5.81 = 0;
subject to n29:
	x67 + x73 + x76 - x77 + x81 + x82 + x85 - x86 - x96 + 9.1 = 0;
subject to n30:
	x68 + x77 - x78 + x86 - x87 - x97 + 6.02 = 0;
subject to n31:
	x20 + x29 + x49 + x58 + x78 + x87 - 608.35 = 0;
subject to n32:
	-x1 - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 + 4626.34 = 0;
subject to n33:
	x88 + x89 + x90 + x91 + x92 + x93 + x94 + x95 + x96 + x97 - 4363.0 = 0;

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
	display x57;
	display x58;
	display x59;
	display x60;
	display x61;
	display x62;
	display x63;
	display x64;
	display x65;
	display x66;
	display x67;
	display x68;
	display x69;
	display x70;
	display x71;
	display x72;
	display x73;
	display x74;
	display x75;
	display x76;
	display x77;
	display x78;
	display x79;
	display x80;
	display x81;
	display x82;
	display x83;
	display x84;
	display x85;
	display x86;
	display x87;
	display x88;
	display x89;
	display x90;
	display x91;
	display x92;
	display x93;
	display x94;
	display x95;
	display x96;
	display x97;
display obj;
