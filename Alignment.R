load("samples.RData")
gf = "/nfs0/Grunwald_Lab/home/tabimaj/RNAseq/phytophthora_infestans_t30-4_1_transcripts.gtf"
bowind = "Pinf_ref"
cmd = with(samples, paste("SGE_Batch -c 'tophat -G", gf, "-p 5 -o", LibraryName, bowind, fastq1,"' -r ", LibraryName, "-P 5 -q grungall1"))
sapply(cmd, function(x) system(x))
