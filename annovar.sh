# bash annovar.sh /labs/gpib/alejandra/Microarreglos_T2D_mayas_mestizos/Axiom_snps.avinput /labs/gpib/alejandra/Microarreglos_T2D_mayas_mestizos/annovar_

annovar=/home/programs/annovar
in=$1
out=$2

perl ${annovar}/table_annovar.pl $in ${annovar}/humandb/ --buildver hg38 -out $out -remove -protocol refGene,ensGene,avsnp150,clinvar_20221231,gnomad312_genome,dbnsfp33a -operation g,g,f,f,f,f -nastring . -otherinfo
