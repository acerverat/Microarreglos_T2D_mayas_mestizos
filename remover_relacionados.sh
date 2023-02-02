# continuacion del preprocesamiento

cd data
cp microarreglo4.fam newfam.fam

# Eliminanos las muestras con parentesco más el control
sed -i '/^CONTROL/d' newfam.fam 
sed -i '/^XC-79/d' newfam.fam
sed -i '/^XC-97/d' newfam.fam
sed -i '/^XC-94/d' newfam.fam
sed -i '/^XC-69/d' newfam.fam
sed -i '/^XC-68/d' newfam.fam
sed -i '/^XC-43/d' newfam.fam
sed -i '/^XC-101/d' newfam.fam
sed -i '/^XC-103/d' newfam.fam
 
plink --bfile microarreglo4 --keep newfam.fam --make-bed --out m94samples

# Calculamos de nuevo parentesco y vemos que ya no hay individuos relacionados
plink --bfile m94samples --genome --out m94samples_genome
awk '{$1=$1; print $2,$4,$10}' OFS="\t"  m94samples_genome.genome > m94samples_genome.genome.tsv
awk '$10>0.25 {print i++,$2,$4,$10}' OFS="\t" m94samples_genome.genome
cd ..
