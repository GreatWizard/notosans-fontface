#!/usr/bin/env bash

for input in fonts/*.ttf; do
  base=${input%.*}
  yarn ttf2eot $input "$base.eot"
  cat $input | yarn ttf2woff2 >> "$base.woff2"
  yarn ttf2woff $input "$base.woff"
  yarn ttf2svg $input "$base.svg"
done
