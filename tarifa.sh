#!/bin/bash
read -p "Introduce el número de llamadas: " numLlamadas

tarifa1=100
tarifa2=$(($numLlamadas+50))
tarifa3=$(($numLlamadas * 2 + 20))

echo "Costes: Tarifa 1 = $tarifa1 $ - Tarifa 2 = $tarifa2 $ - Tarifa 3 = $tarifa3 $"

if (($tarifa2 > $tarifa1 && $tarifa3 > $tarifa1)); then
    echo "¡La tarifa que más te conviene es: TARIFA 1!"
elif (($tarifa1 > $tarifa2 && $tarifa3 > $tarifa2)); then
    echo "¡La tarifa que más te conviene es: TARIFA 2!"
else
    echo "¡La tarifa que más te conviene es: TARIFA 3!"
fi
