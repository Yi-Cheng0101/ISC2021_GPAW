#!/bin/bash
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=80
#SBATCH --time=1:00:00
#SBATCH --job-name=mpi_job
#SBATCH --output=gpaw_one_node_0.txt
#SBATCH --mail-user=n881999116520@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL


module load intel/2019u4
module load intelmpi/2019u4
module load openblas/0.3.7
module load python/3.8.5
module load fftw/3.3.8

source /scratch/l/lcl_uotiscscc/lcl_uotiscsccs1040/yicheng/path.sh
cd  /scratch/l/lcl_uotiscscc/lcl_uotiscsccs1040/yicheng/test_2_node
pip3 install -v gpaw --user

export PATH=$PATH:$HOME/.local/bin


HOSTS=.hosts-job$SLURM_JOB_ID
HOSTFILE=.hostlist-job$SLURM_JOB_ID
srun hostname -f > $HOSTS
sort $HOSTS | uniq -c | awk '{print $2 ":" $1}' >> $HOSTFILE



echo "=============================mpi run============================"
mpirun -np 160 -hostfile ./$HOSTFILE gpaw-python /home/l/lcl_uotiscscc/lcl_uotiscsccs1040/yicheng/gpaw-isc-2021/input-files/copper.py
