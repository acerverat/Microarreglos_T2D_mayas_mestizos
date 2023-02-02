#!/usr/bin/env Rscript

# Rscript merge.R diabetes_related_snps.csv m94samples1.assoc.tsv col1 SNP out.tsv
args = commandArgs(trailingOnly=TRUE)

a <- read.table(args[1],  header = T, sep="\t")
b <- read.table(args[2], header = T, sep="\t")
df <- merge(a,b,by.x=args[3],by.y=args[4])
write.table(df,args[5],sep="\t",row.names = F)

