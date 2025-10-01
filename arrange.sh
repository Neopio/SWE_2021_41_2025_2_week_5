#!/bin/bash

cd files

for file in *
do

  first_char=$(echo "$file" | cut -c 1)


  lower_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

  mv "$file" "../$lower_char/"
done

echo "파일 정리 완료"