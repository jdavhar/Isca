#!/bin/bash
#SBATCH --ntasks=32
#SBATCH --mem-per-cpu=2G
#SBATCH --time=0-01:00
#SBATCH --job-name=jonah_testing
#SBATCH --error=/scratch/outerr/%x-%j.err
#SBATCH --account=def-rfajber

source /home/jdavid48/.bashrc 
conda activate isca_env

cd $GFDL_BASE/exp/edited_cases/realistic_continents

python diag_tests_RCfSST.py
