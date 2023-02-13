#!/bin/bash

read -p "Introduce el nombre: " nombre

li=$(grep $nombre notas.txt | awk '{ print $3 }' | wc -l)
susp=0
for ((i = 1; i <= li; i++)); do
    nota=$(grep $nombre notas.txt | awk '{ print $3 }' | sed "$i"p -n)
    if (($nota < 5)); then
        susp=$(($susp+1))
    fi
done

if (($susp > 0)); then
    echo "$nombre ha suspendido $susp asignatura/s"
else
    echo "$nombre ha aprobado todas las asignaturas"
fi
