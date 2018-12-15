#!/usr/bin/env python
from os import listdir, system

# f.endswith('.mod')
for f in listdir('./'):
    if f.endswith('.mod'):    
        ff = open("test.run","w")
        ff.write('')
        ff.write("option presolve 0;\n")
        ff.write("model "+f+";\n")
        ff.write("write b"+f[0:-4]+";\n")
        system("ampl test.run")

