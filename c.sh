#!/bin/bash

maxLineas=$(cat notas.txt | wc -l)
aprob=0
susp=0

for ((i=2; i<=$maxLineas; i++))
do
  nota=$(sed "$i"p -n notas.txt | tail -c 2)
  if (($nota < 5))
  then
  susp=$(($susp+1))
  else
  aprob=$(($aprob+1))
  fi
done

echo "$susp SUSPENSOS"
echo "$aprob APROBADOS"