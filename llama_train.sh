#!/bin/bash
# **************************
# MODIFY THESE OPTIONS

#SBATCH --partition=isg
#SBATCH --nodelist=oscar
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --gres=gpu:1
#SBATCH --job-name=llama_train
#SBATCH -o log-%N.%j.out
#SBATCH --time=24:00:00

# MODIFY THESE OPTIONS
# **************************
cd lit-llama
python train.py
