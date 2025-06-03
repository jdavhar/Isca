#!/bin/bash
#SBATCH --ntasks=32
#SBATCH --mem-per-cpu=2G
#SBATCH --time=1-00:00
#SBATCH --job-name=frierson
#SBATCH --error=/scratch/jdavid48/outerr/%x-%j.out
#SBATCH --output=/scratch/jdavid48/outerr/%x-%j.out
#SBATCH --account=def-rfajber

source /home/jdavid48/.bashrc 
conda activate isca_env

cd $GFDL_BASE/exp/edited_cases/compare_ras_frierson

python frierson_compare_case.py
