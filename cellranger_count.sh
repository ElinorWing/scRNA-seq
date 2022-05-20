#!/bin/bash
 
#$ -cwd
#$ -V
#
# Set PE
#$ -l h_vmem=16G
#$ -pe sharedmem 4
#$ -l h_rt=23:59:59
#
# Task range. Tasks need to go from 1 to the number of files:
#$ -t 1-3
 
 
# example from eddie wiki
# SGE_TASK_ID will go from 1 to the number of files when we submit an array job
sample_name=`sed -n ${SGE_TASK_ID}p < filename.txt`
echo Processing sample: ${sample_name} on $HOSTNAME
 
cellranger count --id=${sample_name} \
                   --transcriptome=/home/s2126362/scratch/refdata-gex-GRCh38-2020-A \
                   --fastqs=/home/s2126362/scratch/EW-CS_170522/outs/fastq_path/AAAMGTNHV \
                   --sample=${sample_name}