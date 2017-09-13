cd `dirname $0`
# Export names to sbatch
export VENV_NAME="PYTORCH"
export PYTHON="pytorch.py"

# Get python running
source new-modules.sh 
module load python/2.7.11-fasrc01

# Check if the virtual environment exists
VENV_INFO=`conda env list | grep "$VENV_NAME"`
# Make environment if does not exist
if [ -z "$VENV_INFO" ]; then
    echo "Making virtual environment $VENV_NAME"
    conda create -n $VENV_NAME python=2.7.11
    source activate $VENV_NAME
    conda install pytorch torchvision cuda80 -c soumith
fi

# Run the SBATCH JOB
LOG="-o %a.out -e %a.err"
sbatch $LOG --export=ALL --array=1-4 pytorch.sbatch 
