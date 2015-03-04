#! /bin/bash

echo "Auswertung von " $1
echo -n "Anzahl E: "
cat $1 | grep -c "^E" 
echo -n "Anzahl V: "
cat $1 | grep -c "^V" 

echo -n "E muss warten: "
cat $1 | grep -c "^E.(...sek):   20 |" 
echo -n "V muss warten: "
cat $1 | grep -c "^V.(...sek):    0 |"

echo
