#!/bin/bash
pwd=$(pwd)
echo $pwd
pdfdetach -saveall "zod.pdf"
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
