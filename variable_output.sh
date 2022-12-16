#!/bin/bash

:<<'END'
반복문으로 가변 입력 출력
END

echo "Enter names"
read -a names

echo "Input size: ${#names[*]}"

for name in "${names[*]}"
do
  echo "names: $name"
  echo 
  echo "aaa"
done
