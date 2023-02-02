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
grep -v "^#" Axiom_PMDA.na36.r7.a8.annot.csv | awk -F"," '{print $5,$6,$7,$14,$15,$1,$2,$3}' OFS="\t" | tr -d '"' > Axiom_snps.avinput 

cd ..
