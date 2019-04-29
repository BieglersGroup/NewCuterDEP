# -*- coding: utf-8 -*-
from __future__ import division
from __future__ import print_function

import re
import matplotlib.pyplot as plt
import numpy as np
import subprocess

__author__ = "David Thierry"  #: @2019


def main():
    permute_list = [0, 1, 2, 3]
    for permute in permute_list:
        subprocess.call(["mkdir", "permutation_" + str(permute)])
        l = subprocess.check_output(["find","/home/dmolinat/testIpopt_0327/NewCuterDEP/Dependent_Mod/","-type", "f", "-name", "*.mod"])
        rfl = l.split('\n')[0:-1]
        for i in rfl:
            print(i)
            delimiters = "/", "."
            regexPattern = '|'.join(map(re.escape, delimiters))
            ii = re.split(regexPattern, i)
            fname = ii[-2]
            with open("gen_.run", "w") as f:
                print(fname)
                f.write("option presolve 0;\n")
                f.write("model \"")
                f.write(i)
                f.write("\";\n")
                f.write("option nl_permute ")
                f.write(str(permute))
                f.write(";\n")
                f.write("write g")
                f.write(fname)
                f.write(";\n")

            subprocess.call(["ampl", "gen_.run"])
            subprocess.call(["mv", fname + ".nl", "./permutation_" + str(permute) + "/" + fname + ".nl"])


if __name__ == "__main__":
    main()
