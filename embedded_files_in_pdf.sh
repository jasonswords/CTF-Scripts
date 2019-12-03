#!/bin/bash

#This assumes the pdf is in the same directory
pdfdetach -saveall "zod.pdf"
#when attachment is open, it is 1000.pdf and counts down from there.
count=1000

while test $count != 0; do
    echo $count
    pdfdetach -saveall "$count".pdf

    if [ $count -gt 0 ];then
        rm "$count".pdf;
        count="$(( count - 1 ))"
    else
        break
    fi
done
