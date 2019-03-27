#!/usr/bin/env bash
set -e
# Set up options file.
touch ipopt.opt
rm ipopt.opt
echo -e "linear_solver\tma57" >> ipopt.opt
echo -e "print_info_string\tyes" >> ipopt.opt
echo -e "l1exactpenalty_rho0\t1.0" >> ipopt.opt

###
# Set up nl file directory and executable.

PROB_DIR=""
IP_EXE=""

echo "directory $PROB_DIR"
echo "executable $IP_EXE"

# rho
mkdir rho
cp ipopt.opt ./rho
cd ./rho
echo -e "l1exactpenalty_rho_type\tquadratic_model" >> ipopt.opt
echo -e "l1exactpenalty_objective_type\tconstraint" >> ipopt.opt
echo "" >> ipopt.opt
#tmux kill-session -t m_rho
tmux new -d -s m_rho
tmux send-keys -t m_rho "find $PROB_DIR -type f -name \"*.nl\" -exec $IP_EXE \"{}\" \\\;" ENTER
cd ../

## rho_inv
mkdir rhoInv
cp ipopt.opt ./rhoInv
cd ./rhoInv
echo -e "l1exactpenalty_rho_type\tquadratic_model" >> ipopt.opt
echo -e "l1exactpenalty_objective_type\tobjective_inv" >> ipopt.opt
echo "" >> ipopt.opt
#tmux kill-session -t m_rho_i
tmux new -d -s m_rho_i
tmux send-keys -t m_rho_i "find $PROB_DIR -type f -name \"*.nl\" -exec $IP_EXE \"{}\" \\\;" ENTER
cd ../

## rho_ns
mkdir rhoNoSigma
cp ipopt.opt ./rhoNoSigma
cd ./rhoNoSigma
echo -e "l1exactpenalty_rho_type\tquadratic_model_no_sigma" >> ipopt.opt
echo -e "l1exactpenalty_objective_type\tconstraint" >> ipopt.opt
echo "" >> ipopt.opt
#tmux kill-session -t m_rho_ns
tmux new -d -s m_rho_ns
tmux send-keys -t m_rho_ns "find $PROB_DIR -type f -name \"*.nl\" -exec $IP_EXE \"{}\" \\\;" ENTER
cd ../

## rho_i_ns
mkdir rhoInvNoSigma
cp ipopt.opt ./rhoInvNoSigma
cd ./rhoInvNoSigma
echo -e "l1exactpenalty_rho_type\tquadratic_model_no_sigma" >> ipopt.opt
echo -e "l1exactpenalty_objective_type\tobjective_inv" >> ipopt.opt
echo "" >> ipopt.opt
#tmux kill-session -t m_rho_i_ns
tmux new -d -s m_rho_i_ns
tmux send-keys -t m_rho_i_ns "find $PROB_DIR -type f -name \"*.nl\" -exec $IP_EXE \"{}\" \\\;" ENTER
cd ../

## rho_fix
mkdir rhoFixed
cp ipopt.opt ./rhoFixed
cd ./rhoFixed
echo -e "l1exactpenalty_rho_type fixed" >> ipopt.opt
echo -e "l1exactpenalty_objective_type constraint" >> ipopt.opt
echo "" >> ipopt.opt
#tmux kill-session -t m_rho_f
tmux new -d -s m_rho_f
tmux send-keys -t m_rho_f "find $PROB_DIR -type f -name \"*.nl\" -exec $IP_EXE \"{}\" \\\;" ENTER
cd ../

## rho_i_fix
mkdir rhoInvFixed
cp ipopt.opt ./rhoInvFixed
cd ./rhoInvFixed
echo -e "l1exactpenalty_rho_type\tfixed" >> ipopt.opt
echo -e "l1exactpenalty_objective_type\tobjective_inv" >> ipopt.opt
echo "" >> ipopt.opt
#tmux kill-session -t m_rho_if
tmux new -d -s m_rho_if
tmux send-keys -t m_rho_if "find $PROB_DIR -type f -name \"*.nl\" -exec $IP_EXE \"{}\" \\\;" ENTER
cd ../

##
##
# rhoL
mkdir rhoL
cp ipopt.opt ./rhoL
cd ./rhoL
echo -e "l1exactpenalty_rho_type\tlinear_model" >> ipopt.opt
echo -e "l1exactpenalty_objective_type\tconstraint" >> ipopt.opt
echo "" >> ipopt.opt
#tmux kill-session -t m_rho
tmux new -d -s m_rhoL
tmux send-keys -t m_rhoL "find $PROB_DIR -type f -name \"*.nl\" -exec $IP_EXE \"{}\" \\\;" ENTER
cd ../

## rho_inv
mkdir rhoIL
cp ipopt.opt ./rhoIL
cd ./rhoIL
echo -e "l1exactpenalty_rho_type linear_model" >> ipopt.opt
echo -e "l1exactpenalty_objective_type objective_inv" >> ipopt.opt
echo "" >> ipopt.opt
#tmux kill-session -t m_rho_i
tmux new -d -s m_rhoIL
tmux send-keys -t m_rhoIL "find $PROB_DIR -type f -name \"*.nl\" -exec $IP_EXE \"{}\" \\\;" ENTER
cd ../
##
##


