#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=96:00:00
#SBATCH --mem=8GB
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=zfergus@nyu.edu

# Load modules
module purge
module load mathematica/12.1.1
module load python/intel/3.8.6

# Run job
cd /home/zjf214/symbolic-ccd
python compare_toi.py -i $@
