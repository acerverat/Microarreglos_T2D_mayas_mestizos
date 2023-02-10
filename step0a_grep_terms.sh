cd data
# primero le pongo nombre de columnas al archivo
a=""
for i in {1..49}; do a+="|col"${i} ; done
echo $a | sed '1s/|//' | tr '|' '\t' > diabetes_related_snps.csv
echo $a | sed '1s/|//' | tr '|' '\t' > all_snps.csv

# extraigo terminos relacionados con la diabetes 
grep -E 'iabetes|nsulin|lucose|lycemic' Axiom_PMDA.na36.r7.a8.annot.csv | tr ',' '\t' >> diabetes_related_snps.csv
cut -f1 diabetes_related_snps.csv | tail -n+2 | tr -d '"' > diabetes_related_snp_ids.txt

grep -v "^#" Axiom_PMDA.na36.r7.a8.annot.csv | tr ',' '\t' >> all_snps.csv

# convert to annovar input
grep -v "^#" Axiom_PMDA.na36.r7.a8.annot.csv | awk -F"," '{print $5,$6,$7,$14,$15,$1,$2,$3}' OFS="\t" | tr -d '"' | awk -F"\t" '{if ($5 ~ "//") {split($5,a," "); $4="-"; $5=a[1]; print $0; $5=a[3]; print $0} else {print $0}}' OFS="\t" | awk -F"\t" '{if ($4=="-" && $2!=$3) {$3=$2;} print $0}' OFS="\t" > Axiom_snps.avinput 

cd ..
