load("sri.RData")
fs = basename(sri$download_path) 
i = 1
for(f in fs) {
cmd = paste0("SGE_Batch -c '/raid1/teaching/CGRB/rnaseq_rhodes_winter_2015/RLibs/fastq-dump --split-3 ", f,"' -r fastq",i)
cat(cmd,"\n")
system(cmd) # invoke command
i = i + 1
}
