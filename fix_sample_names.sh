# Corrección de los nombres de las muestras
# La codificación de los nombres de las muestras esta rotada con respecto a la celda del microchip
# Por lo que tenemos que renombrar las muestras del microarreglo para que coincidan con la etnicidad y datos clinicos
# Para correr el script debe existir un directorio data con microarreglo.ped proveniente de ConcursoMartaMenjivar.zip
# bash fix_samples.sh

cp data/microarreglo.ped data/microarreglo0.ped
cp data/microarreglo.map data/microarreglo0.map
sed -i  's/CONTROL 103_(Axiom_PMDA)_H12.CEL/CONTROL/' data/microarreglo0.ped
sed -i  's/MX-10_(Axiom_PMDA)_E10.CEL/MX-29/' data/microarreglo0.ped
sed -i  's/MX-11_(Axiom_PMDA)_E11.CEL/MX-37/' data/microarreglo0.ped
sed -i  's/MX-12_(Axiom_PMDA)_E12.CEL/MX-45/' data/microarreglo0.ped
sed -i  's/MX-13_(Axiom_PMDA)_F01.CEL/XC-43/' data/microarreglo0.ped
sed -i  's/MX-14_(Axiom_PMDA)_F02.CEL/XC-65/' data/microarreglo0.ped
sed -i  's/MX-15_(Axiom_PMDA)_F03.CEL/XC-79/' data/microarreglo0.ped
sed -i  's/MX-16_(Axiom_PMDA)_F04.CEL/XC-91/' data/microarreglo0.ped
sed -i  's/MX-17_(Axiom_PMDA)_F05.CEL/XC-101/' data/microarreglo0.ped
sed -i  's/MX-18_(Axiom_PMDA)_F06.CEL/XC-109/' data/microarreglo0.ped
sed -i  's/MX-19_(Axiom_PMDA)_F07.CEL/MX-6/' data/microarreglo0.ped
sed -i  's/MX-1_(Axiom_PMDA)_E01.CEL/XC-42/' data/microarreglo0.ped
sed -i  's/MX-20_(Axiom_PMDA)_F08.CEL/MX-14/' data/microarreglo0.ped
sed -i  's/MX-21_(Axiom_PMDA)_F09.CEL/MX-22/' data/microarreglo0.ped
sed -i  's/MX-22_(Axiom_PMDA)_F10.CEL/MX-30/' data/microarreglo0.ped
sed -i  's/MX-23_(Axiom_PMDA)_F11.CEL/MX-38/' data/microarreglo0.ped
sed -i  's/MX-24_(Axiom_PMDA)_F12.CEL/MX-46/' data/microarreglo0.ped
sed -i  's/MX-25_(Axiom_PMDA)_G01.CEL/XC-44/' data/microarreglo0.ped
sed -i  's/MX-26_(Axiom_PMDA)_G02.CEL/XC-66/' data/microarreglo0.ped
sed -i  's/MX-27_(Axiom_PMDA)_G03.CEL/XC-81/' data/microarreglo0.ped
sed -i  's/MX-28_(Axiom_PMDA)_G04.CEL/XC-93/' data/microarreglo0.ped
sed -i  's/MX-29_(Axiom_PMDA)_G05.CEL/XC-102/' data/microarreglo0.ped
sed -i  's/MX-2_(Axiom_PMDA)_E02.CEL/XC-62/' data/microarreglo0.ped
sed -i  's/MX-30_(Axiom_PMDA)_G06.CEL/XC-110/' data/microarreglo0.ped
sed -i  's/MX-31_(Axiom_PMDA)_G07.CEL/MX-7/' data/microarreglo0.ped
sed -i  's/MX-32_(Axiom_PMDA)_G08.CEL/MX-15/' data/microarreglo0.ped
sed -i  's/MX-33_(Axiom_PMDA)_G09.CEL/MX-23/' data/microarreglo0.ped
sed -i  's/MX-34_(Axiom_PMDA)_G10.CEL/MX-31/' data/microarreglo0.ped
sed -i  's/MX-35_(Axiom_PMDA)_G11.CEL/MX-39/' data/microarreglo0.ped
sed -i  's/MX-36_(Axiom_PMDA)_G12.CEL/MX-47/' data/microarreglo0.ped
sed -i  's/MX-37_(Axiom_PMDA)_H01.CEL/XC-47/' data/microarreglo0.ped
sed -i  's/MX-38_(Axiom_PMDA)_H02.CEL/XC-68/' data/microarreglo0.ped
sed -i  's/MX-39_(Axiom_PMDA)_H03.CEL/XC-83/' data/microarreglo0.ped
sed -i  's/MX-3_(Axiom_PMDA)_E03.CEL/XC-78/' data/microarreglo0.ped
sed -i  's/MX-40_(Axiom_PMDA)_H04.CEL/XC-94/' data/microarreglo0.ped
sed -i  's/MX-41_(Axiom_PMDA)_H05.CEL/XC-103/' data/microarreglo0.ped
sed -i  's/MX-42_(Axiom_PMDA)_H06.CEL/XC-111/' data/microarreglo0.ped
sed -i  's/MX-43_(Axiom_PMDA)_H07.CEL/MX-8/' data/microarreglo0.ped
sed -i  's/MX-44_(Axiom_PMDA)_H08.CEL/MX-16/' data/microarreglo0.ped
sed -i  's/MX-45_(Axiom_PMDA)_H09.CEL/MX-24/' data/microarreglo0.ped
sed -i  's/MX-46_(Axiom_PMDA)_H10.CEL/MX-32/' data/microarreglo0.ped
sed -i  's/MX-47_(Axiom_PMDA)_H11.CEL/MX-40/' data/microarreglo0.ped
sed -i  's/MX-4_(Axiom_PMDA)_E04.CEL/XC-90/' data/microarreglo0.ped
sed -i  's/MX-5_(Axiom_PMDA)_E05.CEL/XC-99/' data/microarreglo0.ped
sed -i  's/MX-6_(Axiom_PMDA)_E06.CEL/XC-108/' data/microarreglo0.ped
sed -i  's/MX-7_(Axiom_PMDA)_E07.CEL/MX-5/' data/microarreglo0.ped
sed -i  's/MX-8_(Axiom_PMDA)_E08.CEL/MX-13/' data/microarreglo0.ped
sed -i  's/MX-9_(Axiom_PMDA)_E09.CEL/MX-21/' data/microarreglo0.ped
sed -i  's/XC 101_(Axiom_PMDA)_D02.CEL/XC-59/' data/microarreglo0.ped
sed -i  's/XC 102_(Axiom_PMDA)_D03.CEL/XC-74/' data/microarreglo0.ped
sed -i  's/XC 103_(Axiom_PMDA)_D04.CEL/XC-89/' data/microarreglo0.ped
sed -i  's/XC 104_(Axiom_PMDA)_D05.CEL/XC-98/' data/microarreglo0.ped
sed -i  's/XC 105_(Axiom_PMDA)_D06.CEL/XC-107/' data/microarreglo0.ped
sed -i  's/XC 106_(Axiom_PMDA)_D07.CEL/MX-4/' data/microarreglo0.ped
sed -i  's/XC 107_(Axiom_PMDA)_D08.CEL/MX-12/' data/microarreglo0.ped
sed -i  's/XC 108_(Axiom_PMDA)_D09.CEL/MX-20/' data/microarreglo0.ped
sed -i  's/XC 109_(Axiom_PMDA)_D10.CEL/MX-28/' data/microarreglo0.ped
sed -i  's/XC 110_(Axiom_PMDA)_D11.CEL/MX-36/' data/microarreglo0.ped
sed -i  's/XC 111_(Axiom_PMDA)_D12.CEL/MX-44/' data/microarreglo0.ped
sed -i  's/XC 38_(Axiom_PMDA)_A03.CEL/XC-69/' data/microarreglo0.ped
sed -i  's/XC 39_(Axiom_PMDA)_A04.CEL/XC-85/' data/microarreglo0.ped
sed -i  's/XC 42_(Axiom_PMDA)_A05.CEL/XC-95/' data/microarreglo0.ped
sed -i  's/XC 43_(Axiom_PMDA)_A06.CEL/XC-104/' data/microarreglo0.ped
sed -i  's/XC 47_(Axiom_PMDA)_A08.CEL/MX-9/' data/microarreglo0.ped
sed -i  's/XC 51_(Axiom_PMDA)_A09.CEL/MX-17/' data/microarreglo0.ped
sed -i  's/XC 53_(Axiom_PMDA)_A10.CEL/MX-25/' data/microarreglo0.ped
sed -i  's/XC 56_(Axiom_PMDA)_A11.CEL/MX-33/' data/microarreglo0.ped
sed -i  's/XC 59_(Axiom_PMDA)_A12.CEL/MX-41/' data/microarreglo0.ped
sed -i  's/XC 5_(Axiom_PMDA)_A02.CEL/XC-51/' data/microarreglo0.ped
sed -i  's/XC 62_(Axiom_PMDA)_B01.CEL/XC-5/' data/microarreglo0.ped
sed -i  's/XC 65_(Axiom_PMDA)_B02.CEL/XC-53/' data/microarreglo0.ped
sed -i  's/XC 66_(Axiom_PMDA)_B03.CEL/XC-70/' data/microarreglo0.ped
sed -i  's/XC 68_(Axiom_PMDA)_B04.CEL/XC-86/' data/microarreglo0.ped
sed -i  's/XC 69_(Axiom_PMDA)_B05.CEL/XC-96/' data/microarreglo0.ped
sed -i  's/XC 70_(Axiom_PMDA)_B06.CEL/XC-105/' data/microarreglo0.ped
sed -i  's/XC 73_(Axiom_PMDA)_B07.CEL/MX-2/' data/microarreglo0.ped
sed -i  's/XC 74_(Axiom_PMDA)_B08.CEL/MX-10/' data/microarreglo0.ped
sed -i  's/XC 78_(Axiom_PMDA)_B09.CEL/MX-18/' data/microarreglo0.ped
sed -i  's/XC 79_(Axiom_PMDA)_B10.CEL/MX-26/' data/microarreglo0.ped
sed -i  's/XC 81_(Axiom_PMDA)_B11.CEL/MX-34/' data/microarreglo0.ped
sed -i  's/XC 83_(Axiom_PMDA)_B12.CEL/MX-42/' data/microarreglo0.ped
sed -i  's/XC 85_(Axiom_PMDA)_C01.CEL/XC-38/' data/microarreglo0.ped
sed -i  's/XC 86_(Axiom_PMDA)_C02.CEL/XC-56/' data/microarreglo0.ped
sed -i  's/XC 88_(Axiom_PMDA)_C03.CEL/XC-73/' data/microarreglo0.ped
sed -i  's/XC 89_(Axiom_PMDA)_C04.CEL/XC-88/' data/microarreglo0.ped
sed -i  's/XC 90_(Axiom_PMDA)_C05.CEL/XC-97/' data/microarreglo0.ped
sed -i  's/XC 91_(Axiom_PMDA)_C06.CEL/XC-106/' data/microarreglo0.ped
sed -i  's/XC 93_(Axiom_PMDA)_C07.CEL/MX-3/' data/microarreglo0.ped
sed -i  's/XC 94_(Axiom_PMDA)_C08.CEL/MX-11/' data/microarreglo0.ped
sed -i  's/XC 95_(Axiom_PMDA)_C09.CEL/MX-19/' data/microarreglo0.ped
sed -i  's/XC 96_(Axiom_PMDA)_C10.CEL/MX-27/' data/microarreglo0.ped
sed -i  's/XC 97_(Axiom_PMDA)_C11.CEL/MX-35/' data/microarreglo0.ped
sed -i  's/XC 98_(Axiom_PMDA)_C12.CEL/MX-43/' data/microarreglo0.ped
sed -i  's/XC 99_(Axiom_PMDA)_D01.CEL/XC-39/' data/microarreglo0.ped
sed -i  's/XC1_(Axiom_PMDA)_A01.CEL/XC-1/' data/microarreglo0.ped
sed -i  's/XC44_(Axiom_PMDA)_A07.CEL/MX-1/' data/microarreglo0.ped
