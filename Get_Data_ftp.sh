
#$ -cwd
#$ -S /bin/bash
#$ -N Wget_ncbi
#$ -l mem_free=10G
#$ -o Wget_o
#$ -e Wget_e
#$ -q all.q
#$ -V
# #$ -h
wget $1
