#!/bin/bash -l

################### Conda Job Batch Script Example ###################
# Section for defining queue-system variables:
#-------------------------------------
# This script asks for 1 nodes and 32 cores (32 cpus per node).  
# Runtime for this job is 59 minutes; syntax is hh:mm:ss.
# partition and account should be set to your project, here "academic" partition is being used
#-------------------------------------
# SLURM-section
#SBATCH --cluster=xcat
#SBATCH --partition=academic
#SBATCH --account=academic
#SBATCH --job-name=test_job_whatever
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --time=00:59:00
#SBATCH --output=test_job.log

######################################
# Section for defining job variables and settings:

# We load all the default program system settings with module load:

module --quiet purge
module load conda/miniconda3
source /opt/miniconda3/etc/profile.d/conda.sh

# You may check other available versions with "module avail conda"

######################################
# Section for running the program and cleaning up:

# Conda needs to be reset to base, then to qiskit
conda activate base 
conda activate qiskit
which python3
# Running the program:
python3 qiskit_hello_world.py


echo "Job finished at"
date
################### Job Ended ###################
exit 0

