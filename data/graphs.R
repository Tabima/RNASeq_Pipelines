#Graphs

#Dataset 1
data1 <- read.table("DifExt_Dataset1.txt",sep = "\t",header = T)


png("data1_up_reg.png",width = 800, height=600)
ggplot(data1[data1$logFC > 1,],aes(Gene,logFC, fill=Function)) + geom_bar(stat="identity") + facet_grid(.~ Function,scales = "free",space = "free") + theme(axis.text.x = element_text(size=12, angle = 90, hjust = 1), strip.text.x = element_text(size=12, angle=90), legend.position="none")
dev.off()

png("data1_down_reg.png",width = 800, height=600)
ggplot(data1[data1$logFC < 1,],aes(Gene,logFC, fill=Function)) + geom_bar(stat="identity") + facet_grid(.~ Function,scales = "free",space = "free") + theme(axis.text.x = element_text(size=12, angle = 90, hjust = 1), strip.text.x = element_text(size=12, angle=90), legend.position="none")
dev.off()


#Dataset2
data2 <- read.table("DifExt_Dataset2.txt",sep = "\t",header = T)

png("data2_up_reg.png",width = 800, height=600)
ggplot(data2[data2$logFC > 1,],aes(Gene,logFC, fill=Function)) + geom_bar(stat="identity") + facet_grid(.~ Function,scales = "free",space = "free") + theme(axis.text.x = element_text(size=12, angle = 90, hjust = 1), strip.text.x = element_text(size=12, angle=90), legend.position="none")
dev.off()

png("data2_down_reg.png",width = 800, height=600)
ggplot(data2[data2$logFC < 1,],aes(Gene,logFC, fill=Function)) + geom_bar(stat="identity") + facet_grid(.~ Function,scales = "free",space = "free") + theme(axis.text.x = element_text(size=12, angle = 90, hjust = 1), strip.text.x = element_text(size=12, angle=90), legend.position="none")
dev.off()

sp2 <- read.table("SampleDifExt_Dataset2.txt",sep = "\t",header = T)
ggplot(data2[1:5,],aes(Gene,logFC, fill=Function)) + geom_bar(stat="identity") + facet_grid(.~ Function,scales = "free",space = "free") + theme(axis.text.x = element_text(size=12, angle = 90, hjust = 1), strip.text.x = element_text(size=12, angle=90), legend.position="none")

library(reshape)
png("sp2_us8_up.png",width = 800, height=800)
ggplot(melt(sp2[1:4,]),aes(variable,value,fill=variable))+geom_bar(stat="identity") + facet_grid(Function ~ .) + theme(strip.text.y = element_text(size=10, angle=90), legend.position="none") + ylab("logFC") + xlab("Lineage")
dev.off()


#Dataset3
data2 <- read.table("DifExt_Dataset2.txt",sep = "\t",header = T)]


