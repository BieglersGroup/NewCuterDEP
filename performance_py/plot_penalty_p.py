# -*- coding: utf-8 -*-
from __future__ import division
from __future__ import print_function

import re

import matplotlib.pyplot as plt
import numpy as np
import subprocess
import sys

__author__ = "David Thierry"  #: @2018


def main():
    title_it = "Performance Profile on CUTEr set (iterations)"
    title_cpu = "Performance Profile on CUTEr set (CPU sec)"
    standard_names = {"./rho": "regular"}
    linestyles = {0: (0, ()),
                  "rold": (0, (1, 10)),
                  "rnew": (0, (1, 5)),
                  3: (0, (1, 1)),
                  4: (0, (5, 10)),
                  5: (0, (5, 5)),
                  6: (0, (5, 1)),
                  7: (0, (3, 10, 1, 10)),
                  8: (0, (3, 5, 1, 5)),
                  9: (0, (3, 1, 1, 1)),
                  10: (0, (3, 10, 1, 10, 1, 10)),
                  11: (0, (3, 5, 1, 5, 1, 5)),
                  12: (0, (3, 1, 1, 1, 1,))}
    colors = {"rold": '#ff0000',
              1: '#ff0066',
              2: '#009900',
              3: '#0000ff',
              "rnew": '#9900ff',
              5: '#009999',
              6: '#996600',
              7: '#669999',
              8: '#000000'}
    markers = {"rold": "o", "rnew": "v"}
    y_title = r'$P($ ratio $ \leq \tau )$'
    x_title = r'$\tau$'
    fig_it_name = "itProf_"
    fig_cpu_name = "cpuProf_"
    itermax = 30000
    cpumax = 3600
    fmax = 1e+40
    f = subprocess.check_output(["find", ".", "-type", "f", "-name", "*_penalty_profile"])
    f = f.decode()
    f_list = f.split('\n')[0:-1]
    st = set()  #: strategy
    n = set()  #: name
    r = dict()  #: dictionary
    for cf in f_list:
        s = cf.split('/')[1:]
        st.add(s[0])
        n.add(s[1])
        it = list()
        rho = list()
        print(s[0], s[1])
        with open(cf, "r") as fr:
            lines = fr.readlines()
            fr.close()
        for line in lines:
            cspl = re.split(r'\t', line)
            it.append(int(cspl[0]))
            rho.append(float(cspl[1]))
        r[s[1], s[0]] = (it, rho)
#        plt.figure(name)
#        f = plt.plot(it, rho, label=strategy)
#        plt.legend()
#        plt.xlabel("iteration")
#        plt.ylabel("penalty")
#        plt.savefig(name + ".pdf", dpi=50)
#        plt.close(name)
    for i in n:
        plt.figure(i)
        for j in st:
            f = plt.plot(r[i, j][0], r[i, j][1], label=j)
            plt.setp(f, linewidth=1.2, linestyle=linestyles[j], color=colors[j], marker=markers[j])
            plt.legend()
            plt.xlabel("iteration")
            plt.ylabel("penalty")
            plt.title(i)
        plt.savefig(i + ".pdf", dpi=50)
        plt.close(i)

    sys.exit()

    plt.figure("one")
    f = plt.plot(it, rho, label=name)
    plt.legend()
    plt.xlabel(x_title)
    plt.ylabel(y_title)
    plt.savefig("test.pdf", dpi=250)
    plt.show()
    sys.exit()
    for s in range(0, solver):
        rho_ = []
        tau_ = []
        for t in np.linspace(1, 100):
            rho_.append(rho(s, t, prob, r_it))
            tau_.append(t)
        f = plt.plot(tau_, rho_, label=standard_names[rfl[s]])
        plt.setp(f, linewidth=1.2, linestyle=linestyles[s], color=colors[s])

    plt.legend()
    plt.xlabel(x_title)
    plt.ylabel(y_title)
    plt.title(title_it)
    #plt.annotate('max(iter): ' + str(r_it_max), xy=(0.05, 0.95), xycoords='axes fraction')
    # plt.show()
    plt.savefig(fig_it_name + '1.pdf', dpi=500)

    plt.figure("two")
    r_it_max = np.max(r_it.values())
    for s in range(0, solver):
        rho_ = []
        tau_ = []
        for t in np.linspace(1, 3000):
            rho_.append(rho(s, t, prob, r_it))
            tau_.append(t)
        f = plt.plot(tau_, rho_, label=standard_names[rfl[s]])
        plt.setp(f, linewidth=1.2, linestyle=linestyles[s], color=colors[s])

    plt.legend()
    plt.xlabel(x_title)
    plt.ylabel(y_title)
    plt.title(title_it)

    #plt.annotate('max(iter): ' + str(r_it_max), xy=(0.05, 0.95), xycoords='axes fraction')
    # plt.show()
    plt.savefig(fig_it_name + '2.pdf', dpi=500)

    plt.figure("three")
    r_cpu_max = np.max(r_cpu.values())
    for s in range(0, solver):
        rho_ = []
        tau_ = []
        for t in np.linspace(1, 100):
            rho_.append(rho(s, t, prob, r_cpu))
            # tau_.append(t)
            tau_.append(t)
        f = plt.plot(tau_, rho_, label=standard_names[rfl[s]])
        plt.setp(f, linewidth=1.2, linestyle=linestyles[s], color=colors[s])
    plt.legend()
    plt.xlabel(x_title)
    plt.ylabel(y_title)
    plt.title(title_cpu)

    #plt.annotate('r_max(cpu): ' + str(r_cpu_max), xy=(0.05, 0.05), xycoords='axes fraction')

    plt.savefig(fig_cpu_name + '1.pdf', dpi=500)

    plt.figure("four")
    r_cpu_max = np.max(r_cpu.values())
    for s in range(0, solver):
        rho_ = []
        tau_ = []
        for t in np.linspace(1, 100*100):
            rho_.append(rho(s, t, prob, r_cpu))
            # tau_.append(t)
            tau_.append(t)
        f = plt.plot(tau_, rho_, label=standard_names[rfl[s]])
        plt.setp(f, linewidth=1.2, linestyle=linestyles[s], color=colors[s])

    plt.legend()
    plt.xlabel(x_title)
    plt.ylabel(y_title)
    plt.title(title_cpu)

    #plt.annotate('r_max(cpu): ' + str(r_cpu_max), xy=(0.05, 0.05), xycoords='axes fraction')
    plt.savefig(fig_cpu_name + '2.pdf', dpi=500)


def rho(solver, tau, problem_set, r):
    l = 0
    for p in problem_set:
        if r[p, solver] <= tau:
            l += 1
    return l / len(problem_set)


if __name__ == "__main__":
    main()
