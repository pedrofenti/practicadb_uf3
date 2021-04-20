#!/bin/bash

if [ "$1" == "" ]; then
	echo "Indica el nombre del archivo"
	echo -e "\t$0 NOMBRE_ARCHIVO"
	exit 1
fi

mysqldump -u backup pokenti3 > $1
#/tmp/$1

tar czf $1.tar.gz $1
#--absolute-names /tmp/$1

#rm /tmp/$1

exit 0
