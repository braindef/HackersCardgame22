#!/bin/bash

if  [ "$1" = "" ]
then
echo -e "
\e[39m
Usage:
------
To print PDFs English: \e[36m./printPDFs.sh EN A6\e[39m
To print PDFs German: \e[36m./generatePDF.sh DE A4\e[39m

"
exit 0
fi


find ../pdf/$1/$2 -name "*.pdf" >./pdf_$1_$2.txt

echo --------------------------------------------------
echo you can get the printer name with the command lpq
echo and you maybe need to edit this file
echo --------------------------------------------------


read -n 1 -s -r -p "set the printer you would like to print as default printer.
Then press any key to continue"

counter=0

for j in $(echo "./pdf_$1_$2.txt")
 do
 echo j: $j
 for i in $(cat $j)
  do
   let counter=counter+1
   echo i: $i
#   xdg-open $i &
#   sleep 10
#   xdotool key ctrl+p
#   sleep 1
#   xdotool key KP_Enter
#   sleep 10
#   xdotool key alt+F4
    lp -d Brother_MFC_L8690CDW_series $i 
    echo --------------------------------------------------------------------------------
   echo printed $i
   echo counter: $counter
  done
done
echo ================================================================================
