#!/bin/bash
#
# add all other SBATCH directives here...
#
#SBATCH -p cox # Has coxgpu[1-6]
#SBATCH -w coxgpu05 # Only this machine
#SBATCH -n 1
#SBATCH -N 1
#SBATCH --mem=8000
#SBATCH -t 3-12:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=you@example.com

# we are working
RUNNING="singularity -h"
echo $RUNNING
time $RUNNING

# end of program
exit 0;
