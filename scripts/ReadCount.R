load("samples.RData")
samples$countf  =  paste(samples$LibraryName, "count" , sep =  ".")
gf  =  "/nfs0/Grunwald_Lab/home/tabimaj/RNAseq/phytophthora_infestans_t30-4_1_transcripts.gtf"
cmd  =  paste0( "SGE_Batch -c '/home/bpp/tabimaj/.local/bin/htseq-count -s no -a 10 " , samples$LibraryName,"_sn.sam " , gf, " > " , samples$countf, "' -r ", samples$LibraryName ,"_readCount")
sapply(cmd, function(x) system(x))
save(samples,file="samples.RData")