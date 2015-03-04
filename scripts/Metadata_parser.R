#!/usr/bin/env Rscript
# load sri object
load("sri.RData")
samples = unique(sri[,c("LibraryName","LibraryLayout")])
for(i in seq_len(nrow(samples))) {
        rw = (sri$LibraryName==samples$LibraryName[i])
        if(samples$LibraryLayout[i]=="PAIRED") {
        samples$fastq1[i] = paste0(sri$Run[rw],"_1.fastq",collapse=",")
        samples$fastq2[i] = paste0(sri$Run[rw],"_2.fastq",collapse=",")
        } else {
        samples$fastq1[i] = paste0(sri$Run[rw],".fastq",collapse=",")
        samples$fastq2[i] = ""
         }
        }
        
# add descriptive column names
## Control:
samples$condition = "CTL" 

## Mefanoxam:
samples$condition = c("NoMef","NoMef","NoMef","CTL","Mef","Mef","Mef","CTL")

## Short_Convention
samples$shortname = paste(substr(samples$condition,1,2),  substr(samples$LibraryLayout,1,2),  seq_len(nrow(samples)), sep=".")
save(samples,file="samples.RData")
