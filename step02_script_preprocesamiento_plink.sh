# para correr este script se requiere primero arreglar los nombres de las muestras con fix_samples.sh
# debe existir el directorio data con microarreglo0.ped y .map
# debe existir el archivo myfam.fam
# el archivo myfam.fam tiene 
#   - id de la muestra, 
#   - id de a familia que es el mismo
#   - 0 para id de padre, 
#   - 0 para id de madre, 
#   - 1 para masculino y 2 para femenino
#   - 1 para cdmx y 2 para xocan

cd data
plink --file microarreglo0 --make-bed --out microarreglo1 --allow-extra-chr --no-fid --no-parents --no-sex --no-pheno
cp myfam.fam microarreglo1.fam
plink --bfile microarreglo1 --allow-extra-chr --make-bed --out microarreglo2
plink --bfile microarreglo2 --chr 1-22,X,Y,XY --make-bed --out microarreglo3 --allow-extra-chr
plink --bfile microarreglo3 --geno 0.03 --hwe 0.00001 --maf 0.00001 --make-bed --out microarreglo4
plink --bfile microarreglo4 --genome --out microarreglo4_genome

# para visualizar las relaciones familiares
awk '{$1=$1; print $2,$4,$10}' OFS="\t" microarreglo4_genome.genome | grep -v CONTROL > microarreglo4_genome.tsv
cd ..
