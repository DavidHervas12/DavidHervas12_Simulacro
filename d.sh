#!/bin/bash

read -p "Introduce una nota: " nota

if (($nota >= 0 && $nota <= 10)); then
    if (($nota < 5)); then
        echo "suspenso"
    elif (($nota < 9)); then
        echo "aprobado"
    else
        echo "sobresaliente"
    fi
else
    echo "La nota debe estar entre 1 y 10"
fi
