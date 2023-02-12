#!/bin/bash

matriculas=$(cat notas.txt | wc -l)
matriculas=$(($matriculas-1))

echo "Número total de matrículas: $matriculas"