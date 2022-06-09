#!/bin/bash
#
# Execute in the current working directory
#$ -cwd
#
#set environment
#
#max runtime of 48 hours
#$ -V
#$ -l h_vmem=8G
#$ -pe sharedmem 4
#$ -l h_rt=47:59:59
#
# Task range. Tasks need to go from 1 to the number of files:
#$ -t 1-3


# example from eddie wiki
# SGE_TASK_ID will go from 1 to the number of files when we submit an array job
sample_name=`sed -n ${SGE_TASK_ID}p < filenames.txt`
echo Processing sample: ${sample_name} on $HOSTNAME


cellranger multi --id=${sample_name} --csv=../${sample_name}_multi_config.csv
