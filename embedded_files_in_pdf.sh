#!/bin/bash

pdfdetach -saveall "zod.pdf"

count=1000
count2=1000

while test $count != 0; do
echo $count
pdfdetach -saveall "$count".pdf
count="$(( count - 1 ))"
if [ $count2 -gt 1 ];then
rm "$count2".pdf;
count2="$(( count2 - 1 ))"
fi

done
