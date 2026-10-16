#!/bin/bash
echo "Filtrando erros de log"
grep "ERROR" /workspace/analise_incidente/auth.log > /workspace/analise_incidente/invasoes_registradas.txt

