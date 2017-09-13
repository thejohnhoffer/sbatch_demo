cd `dirname $0`
sbatch -o 0.out -e 0.err singularity.sbatch
