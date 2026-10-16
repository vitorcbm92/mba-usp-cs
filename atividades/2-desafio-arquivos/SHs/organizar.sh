#!/bin/bash
cd /workspace/atividades/2-desafio-arquivos || exit 1

shopt -s nullglob  # Se não houver arquivos, o loop simplesmente não roda

script="$(basename "$0")"  # Nome deste script, para ele não se mover

for f in *.*; do
    [[ -f "$f" ]] || continue          # Pula diretórios
    
    ext="${f##*.}"        # Tudo depois do último ponto: foto.final.PNG -> PNG
    dir="${ext^^}s"       # Maiúsculas + "s": png -> PNGs

    mkdir -p -- "$dir"
    mv -v -- "$f" "$dir/"
done

echo "Arquivos organizados"