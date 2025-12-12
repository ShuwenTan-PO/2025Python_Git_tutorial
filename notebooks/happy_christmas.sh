#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --output=outputfile.txt
#SBATCH --error=outputfile.txt

module load matlab
matlab -singleCompThread -r happy_christmas\;exit\;
