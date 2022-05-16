#!/bin/bash
#
# Execute in the current working directory
#$ -cwd
#
#set environment
#
#max runtime of 48 hours
#$ -V
#$ -l h_vmem=16G
#$ -pe sharedmem 8
#$ -l h_rt=47:59:59


# load modules
module load igmm/apps/samtools/1.6
module load anaconda
source activate velocity


#sample_name=`sed -n ${SGE_TASK_ID}p < samplename_list.txt`


#run velocyto
velocyto run -vvv -b /home/s2126362/scratch/runs/HumanB_Cell_multi/outs/per_sample_outs/HumanB_Cell_multi/count/sample_feature_bc_matrix/barcodes.tsv /home/s2126362/scratch/runs/HumanB_Cell_multi/outs/per_sample_outs/HumanB_Cell_multi/count/sample_alignments.bam /home/s2126362/scratch/refdata-gex-GRCh38-2020-A/genes/genes.gtf


