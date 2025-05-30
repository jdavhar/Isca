#!/bin/bash
#SBATCH --ntasks=32
#SBATCH --mem-per-cpu=2G
#SBATCH --time=0-01:00
#SBATCH --job-name=diag_test
#SBATCH --error=/scratch/jdavid48/outerr/%x-%j.out
#SBATCH --output=/scratch/jdavid48/outerr/%x-%j.out
#SBATCH --account=def-rfajber

source /home/jdavid48/.bashrc
conda activate isca_env

cd $GFDL_BASE/exp/edited_cases/diag_tests

python diag_tests_RCfSST.py
