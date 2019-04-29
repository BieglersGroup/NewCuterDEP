# -*- coding: utf-8 -*-
from __future__ import division
from __future__ import print_function

import re

import matplotlib.pyplot as plt
import numpy as np
import subprocess

__author__ = "David Thierry"  #: @2018


def main():
    title_it = "Performance Profile on CUTEr set (iterations)"
    title_cpu = "Performance Profile on CUTEr set (CPU sec)"
    standard_names = {"./rhoInvFixed/rrho_adapt0_timings.txt": r"$1/\rho_0$",
                      "./rhoL/rrho_adapt0_timings.txt": r"$\rho$(LM)",
                      "./rhoInv/rrho_adapt0_timings.txt": r"$1/\rho$",
                      "./rhoNoSigma/rrho_adapt0_timings.txt": r"$\rho$(no $\Sigma_x$)",
                      "./rho/rrho_adapt0_timings.txt": r"$\rho$",
                      "./rhoIL/rrho_adapt0_timings.txt": r"$1/\rho$(LM)",
                      "./rhoInvNoSigma/rrho_adapt0_timings.txt": r"$1/\rho$(no $\Sigma_x$)",
                      "./rhoFixed/rrho_adapt0_timings.txt": r"$\rho_0$",
                      "./Vanilla/vanilla0_timings.txt": "Vanilla"
                      }
    linestyles = {0: (0, ()),
                  1: (0, (1, 10)),
                  2: (0, (1, 5)),
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
    colors = {0: '#ff0000',
              1: '#ff0066',
              2: '#009900',
              3: '#0000ff',
              4: '#9900ff',
              5: '#009999',
              6: '#996600',
              7: '#669999',
              8: '#000000'}
    y_title = r'$P($ ratio $ \leq \tau )$'
    x_title = r'$\tau$'
    fig_it_name = "itProf_"
    fig_cpu_name = "cpuProf_"
    itermax = 30000
    cpumax = 3600
    fmax = 1e+40
    l = subprocess.check_output(["find",".","-type", "f", "-name", "*.txt"])
    rfl = l.split('\n')[0:-1]

    iter_dict = dict()
    cpus_dict = dict()
    f_dict = dict()
    sdict = dict()
    prob = set()
    solver = 0
    sflagd = dict()
    for i in rfl:
        print(standard_names[i])
        f = open(i, "r")
        lines = f.readlines()
        f.close()
        for line in lines:
            if line == '\n':
                continue
            fl = re.split(r'\t', line)
            j = 0
            n = 0
            m = 0
            stat = -99
            itv = itermax
            cpus = cpumax
            f = fmax
            sflag = False
            for k in fl:
                if k == "n":
                    n = int(fl[j + 1])
                elif k == "me":
                    m = int(fl[j + 1])
                elif k == "Iter":
                    itv = int(fl[j + 1])
                elif k == "CPUs":
                    cpus = float(fl[j + 1])
                #elif k == "f:":
                #    print(fl[j+1])
                #    f = float(fl[j + 1])
                elif k == "STAT:":
                    stat = int(fl[j + 1])
                    sflag = True  # Execution finished.
                    sdict[fl[0], solver] = stat
                j += 1
            if not (stat == 0 or stat == 1 or stat == 2):
                itv = itermax  #: not solved
                cpus = cpumax
                f = fmax

            if n > 0 and m > 0:
                iter_dict[fl[0], solver] = itv
                cpus_dict[fl[0], solver] = cpus
                f_dict[fl[0], solver] = f
                sflagd[fl[0], solver] = sflag
                prob.add(fl[0])
        solver += 1

    r_it = dict()
    r_cpu = dict()
    r_f = dict()

    for i in prob:
        print("\n")
        for k in range(0, solver):
            if sflagd[i, k]:
                print(i, sdict[i, k], "\tsolver:\t", k, end="\t")
                if sdict[i, k] == 0 or sdict[i, k] == 1:
                    print("success.")
                else:
                    print("failure.")
            else:
                print(i, "Abort", "\tsolver:\t", k, "\tfailure.")

    for i in prob:
        it_list = []
        cpu_list = []
        f_list = []
        for k in range(0, solver):
            ival = iter_dict[i, k]
            cval = cpus_dict[i, k]
            f = f_dict[i, k]
            it_list.append(ival)
            cpu_list.append(cval)
            f_list.append(f)
        it_min = min(it_list)
        cpu_min = np.min(cpu_list)
        for k in range(0, solver):  #: look for the minimum
            if it_list[k] == it_min:
                break
        if it_min == 0:
            print(i, [iter_dict[i, k] for k in range(0, solver)], "bad::itv")
            it_min = 1
        for k in range(0, solver):
            r_it[i, k] = iter_dict[i, k] / it_min
        for k in range(0, solver):  #: look for the minimum
            if cpu_list[k] == cpu_min:
                break
        if cpu_min < 1e-13:
            print(i, [cpus_dict[i, k] for k in range(0, solver)], "bad::timing")
            cpu_min = 1e-13
        for k in range(0, solver):
            r_cpu[i, k] = cpus_dict[i, k] / cpu_min

        #for k in range(0, solver):  #: look for the minimum
            #if f_list[k] == f_min:
                #break
        #if np.abs(f_min) < 1e-13:
            #print(i, [f_dict[i, k] for k in range(0, solver)], "bad::f")
            #f_min = 1e-13
        #for k in range(0, solver):
            #r_f[i, k] = f_dict[i, k] / f_min

    plt.figure("one")
    r_it_max = np.max(r_it.values())
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
