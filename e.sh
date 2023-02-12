#!/bin/bash

read -p "Introduce el nombre: " nombre
read -p "Introduce el modulo: " modulo

nota=$(grep $nombre notas.txt | grep $modulo | tail -c 2)

if (($nota >= 0 && $nota <= 10)); then
    if (($nota < 5)); then
        echo "$nota suspenso"
    elif (($nota < 9)); then
        echo "$nota aprobado"
    else
        echo "$nota sobresaliente"
    fi
else
    echo "La nota debe estar entre 1 y 10"
fi
