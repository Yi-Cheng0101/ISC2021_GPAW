#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=80
#SBATCH --time=1:00:00
#SBATCH --job-name=mpi_job
#SBATCH --output=gpaw_one_node_2.txt
#SBATCH --mail-user=n88199911652@gmail.com
#SBATCH --mail-type=BEGIN,END,FAIL


module load intel/2019u4
module load intelmpi/2019u4
module load openblas/0.3.7
module load python/3.8.5
module load fftw/3.3.8
source /scratch/l/lcl_uotiscscc/lcl_uotiscsccs1040/yicheng/path.sh
cd /scratch/l/lcl_uotiscscc/lcl_uotiscsccs1040/yicheng/gpaw-20.10.0
pip3 install -v gpaw --user

export PATH=$PATH:$HOME/.local/bin
mpirun -np 80 gpaw-python /home/l/lcl_uotiscscc/lcl_uotiscsccs1040/yicheng/gpaw-isc-2021/input-files/copper.py
