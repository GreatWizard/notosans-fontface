#!/usr/bin/env bash

for input in fonts/*.ttf; do
  base=${input%.*}
  ttf2eot $input "$base.eot"
  cat $input | ttf2woff2 >> "$base.woff2"
  ttf2woff $input "$base.woff"
  ttf2svg $input "$base.svg"
done
