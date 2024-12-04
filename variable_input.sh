#!/bin/bash

echo "Enter names"
read -a names

echo "Input size: ${#names[*]}"

echo "first: ${names[0]}"

echo "first: ${names[0]}, second: ${names[1]}, third: ${names[2]}"
