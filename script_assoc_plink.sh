# Pruebas de asociacion con los snps escogidos relacionados a la diabetes y los del microarreglo entero

cd data

# asociacion con snps de diabetes
plink -bfile m94samples --extract diabetes_related_snp_ids.txt --assoc --make-bed --out m94samples_diabetes_snps
awk 'NR==1 || $9<0.05 && $10!="NA" {$1=$1; print $0}' OFS="\t" m94samples_diabetes_snps.assoc > m94samples_diabetes_snps_assoc_significant.tsv
Rscript ../merge.R diabetes_related_snps.csv m94samples_diabetes_snps_assoc_significant.tsv col1 SNP m94samples_diabetes_snps_assoc_significant_annot.tsv

# asociacion con todos los snps
plink -bfile m94samples --assoc --make-bed --out m94samples_all_snps
awk 'NR==1 || $9<0.01 && $10!="NA" {$1=$1; print $0}' OFS="\t" m94samples_all_snps.assoc > m94samples_all_snps_assoc_significant.tsv
Rscript ../merge.R all_snps.csv m94samples_all_snps_assoc_significant.tsv col1 SNP m94samples_all_snps_assoc_significant_annot.tsv

cd ..
