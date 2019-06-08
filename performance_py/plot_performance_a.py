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
    permuted = True
    vanilla_name = "vanilla"  #: change accordingly
    vanilla_strategy = "ipopt"
    title_it = "Performance Profile on CUTEr set (iterations)"
    title_cpu = "Performance Profile on CUTEr set (CPU sec)"
    standard_names = {("rho", "ip_l1"): r"$\rho$_old",
                      ("rho", "ip_l1_neg"): r"$\rho$ new",
                      ("", ""): r"$1/\rho_0$",
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
    l = subprocess.check_output(["find", ".", "-type", "f", "-name", "*.txt"])
    l = l.decode()
    rfl = l.split('\n')[0:-1]
    iter_dict = dict()
    cpus_dict = dict()
    f_dict = dict()
    sdict = dict()
    solver = 0
    sflagd = dict()
    solvers = set()
    strategies = set()
    problems = set()
    print(rfl)
    vanilla_found = False
    for i in rfl:
        print(i)
        isplit = i.split('/')
        solver = isplit[1]
        strategy = isplit[2]  #: we assume 2 level folder structure
        if solver == vanilla_name:
            print("Vanilla ipopt found!!")
            vanilla_found = True
            strategy = vanilla_strategy
            solver = 'vanilla'
        else:
            solvers.add(solver)
            strategies.add(strategy)
        f = open(i, "r")  #: read the data
        lines = f.readlines()
        f.close()
        for line in lines:
            if line == '\n':
                continue
            fl = re.split(r'\t', line)
            if permuted:
                prob = re.split("/", fl[0])[-2] + "_" + re.split("/", fl[0])[-1]
            else:
                prob = re.split("/", fl[0])[-1]
            problems.add(prob)
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
                elif k == "STAT:":
                    stat = int(fl[j + 1])
                    sflag = True  # Execution finished.
                    sdict[prob, strategy, solver] = stat
                j += 1
            if not (stat == 0 or stat == 1):
                itv = itermax  #: not solved
                cpus = cpumax
                f = fmax
            # if n > 0 and m > 0:
            # if ipopt exits then it is a failure
            iter_dict[prob, strategy, solver] = itv
            cpus_dict[prob, strategy, solver] = cpus
            f_dict[prob, strategy, solver] = f
            sflagd[prob, strategy, solver] = sflag
    r_it = dict()
    r_cpu = dict()
    r_f = dict()
    for i in problems:
        for j in strategies:
            for k in solvers:
                if sflagd[i, j, k]:
                    # print(i, sdict[i, j, k], "\tsolver:\t", k, end="\t")
                    # if sdict[i, j, k] == 0 or sdict[i, j, k] == 1:
                    #    #print("success.")
                    #    pass
                    # else:
                    #    print("failure.")
                    pass
                else:
                    print(i, "Abort", "\tsolver:\t", k, j, "\tfailure.")  #: I don't remember what this means
                    iter_dict[i, j, k] = itermax  #: should it?
                    cpus_dict[i, j, k] = cpumax
                    f_dict[i, j, k] = fmax
    if vanilla_found:
        for i in problems:
            if sflagd[i, vanilla_strategy, vanilla_name]:
                pass
            else:
                print(i, "Abort", "\tsolver:\t", vanilla_strategy, vanilla_name, "\tfailure.")  #: I don't remember what this means
                iter_dict[i, vanilla_strategy, vanilla_name] = itermax  #: should it?
                cpus_dict[i, vanilla_strategy, vanilla_name] = cpumax
                f_dict[i, vanilla_strategy, vanilla_name] = fmax

    for i in problems:  #: compute ratios
        it_min = 0
        cpu_min = 0
        it_list = []
        cpu_list = []
        # f_list = []
        for j in strategies:
            for k in solvers:
                # f = f_dict[i, j, k]
                it_list.append(iter_dict[i, j, k])
                cpu_list.append(cpus_dict[i, j, k])
                # f_list.append(f)
        if vanilla_found:
            it_list.append(iter_dict[i, vanilla_strategy, vanilla_name])
            cpu_list.append(cpus_dict[i, vanilla_strategy, vanilla_name])
        it_min = min(it_list)
        cpu_min = np.min(cpu_list)  #: this is float so use np.min
        # for j in strategies:  #: look for the minimum
        #    for k in solvers:
        #        if it_list[k] == it_min:
        #            break
        if it_min == 0:
            print(i, "bad::it_min")
            it_min = 1
        for j in strategies:
            for k in solvers:
                r_it[i, j, k] = iter_dict[i, j, k] / it_min  #: compute ratios
        if vanilla_found:
            r_it[i, vanilla_strategy, vanilla_name] = iter_dict[i, vanilla_strategy, vanilla_name] / it_min
        # for j in strategies:
        #    for k in solvers:  #: look for the minimum
        #        if cpu_list[k] == cpu_min:
        #            break
        if cpu_min < 1e-13:
            print(i, "bad::timing")
            cpu_min = 1e-13
        for j in strategies:
            for k in solvers:
                r_cpu[i, j, k] = cpus_dict[i, j, k] / cpu_min
        if vanilla_found:
            r_cpu[i, vanilla_strategy, vanilla_name] = cpus_dict[i, vanilla_strategy, vanilla_name] / cpu_min

    plt.figure("one")
    for st in strategies:
        for s in solvers:
            rho_ = []
            tau_ = []
            for t in np.linspace(1, 100):
                rho_.append(rho(st, s, t, problems, r_it))
                tau_.append(t)
            # f = plt.plot(tau_, rho_, label=standard_names[st, s])
            f = plt.plot(tau_, rho_, label=s + "_" + st)
            # plt.setp(f, linewidth=1.2, linestyle=linestyles[1], color=colors[1])
    if vanilla_found:
        rho_ = []
        tau_ = []
        for t in np.linspace(1, 100):
            rho_.append(rho(vanilla_strategy, vanilla_name, t, problems, r_it))
            tau_.append(t)
        f = plt.plot(tau_, rho_, label=vanilla_name + "_" + vanilla_strategy, marker="v")

    plt.legend()
    plt.xlabel(x_title)
    plt.ylabel(y_title)
    plt.title(title_it)
    plt.savefig(fig_it_name + '1.pdf', dpi=500)
    plt.close()
    sys.exit()

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

    # plt.annotate('max(iter): ' + str(r_it_max), xy=(0.05, 0.95), xycoords='axes fraction')
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

    # plt.annotate('r_max(cpu): ' + str(r_cpu_max), xy=(0.05, 0.05), xycoords='axes fraction')

    plt.savefig(fig_cpu_name + '1.pdf', dpi=500)

    plt.figure("four")
    r_cpu_max = np.max(r_cpu.values())
    for s in range(0, solver):
        rho_ = []
        tau_ = []
        for t in np.linspace(1, 100 * 100):
            rho_.append(rho(s, t, problems, r_cpu))
            # tau_.append(t)
            tau_.append(t)
        f = plt.plot(tau_, rho_, label=standard_names[rfl[s]])
        plt.setp(f, linewidth=1.2, linestyle=linestyles[s], color=colors[s])

    plt.legend()
    plt.xlabel(x_title)
    plt.ylabel(y_title)
    plt.title(title_cpu)

    # plt.annotate('r_max(cpu): ' + str(r_cpu_max), xy=(0.05, 0.05), xycoords='axes fraction')
    plt.savefig(fig_cpu_name + '2.pdf', dpi=500)


def rho(strategy, solver, tau, problem_set, r):
    l = 0
    for p in problem_set:
        if r[p, strategy, solver] <= tau:
            l += 1
    return l / len(problem_set)


if __name__ == "__main__":
    main()
