## Cuente la cantidad de registros de cada tipo de péptido [sequence] y guarde el resultado en amp.txt.

echo -e "Primero vemos en que fila está sequence con ayuda del siguiente codigo" > ../data/amp.txt

head -n 2 ../data/grampa.csv

echo -e "Cantidad de registro de cada tipo de péptido en sequence" > ../data/amp.txt

tail -n +2 ../data/grampa.csv | cut -d "," -f 4 | uniq -c | sort


## calcule la longitud de los péptidos que tienen el dominio “WGS” y guarde los registros y su conteo en el “wgs.csv”

echo -e "Registro de los péptidos que tienen WGS"

tail -n +2 ../data/grampa.csv | cut -d "," -f 4 | uniq -c | grep "WGS" | sort >> ../data/wgs.csv




echo -e "Longitud de los péptidos WGS" >> ../data/wgs.csv

Dominio=`tail -n +2 ../data/grampa.csv | cut -d "," -f 4 | grep "WGS" | sort | uniq`
for WGS in $Dominio
do
    Longitud=`echo $WGS`
    echo "Longitud:" $Longitud "peptido:" $WGS
done

##GRACIAS

