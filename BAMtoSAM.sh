#$ -cwd
#$ -S /bin/bash
#$ -N BAMtoSAM
#$ -l mem_free=10G
#$ -o BAMtoSam_o
#$ -e BAMtoSam_e
#$ -q all.q
#$ -V
# #$ -h


samtools sort -n $1/accepted_hits.bam $1_sn
samtools view -o $1_sn.sam $1_sn.bam;
samtools sort $1/accepted_hits.bam $1_s;
samtools index $1_.bam;
