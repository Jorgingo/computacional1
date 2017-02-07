# Descarga por mes. Cambiar año de consulta. Ajustar el numero de estacion.

#!/bin/bash

 

# Despues de editar: chmod 755 script1.sh
# Para ejecutar: ./script1.sh

 

IFS=":"

LISTM31="01:03:05:07:08:10:12"

#LISTM31="01:03:05:07"

LISTM30="04:06:09:11"

#LISTM30="04:06"

LISTM28="02"

 

# Script para bajar info por mes. Año 2016, dentro del URL:  YEAR=2015

# Months 31 days

for i in $LISTM31 ; do

    /usr/bin/wget "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=2016&MONTH=$i&FROM=0100&TO=3112&STNM=76256"

       /bin/sleep 5

done

# Months 30 days

for i in $LISTM30 ; do

    /usr/bin/wget "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=2016&MONTH=$i&FROM=0100&TO=3012&STNM=76256"

       /bin/sleep 5

done

# Feb. 28 days

for i in $LISTM28 ; do

    /usr/bin/wget "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=2016&MONTH=$i&FROM=0100&TO=2812&STNM=76256"

       /bin/sleep 5

done
