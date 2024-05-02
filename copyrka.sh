#!/bin/bash

#принимаем два файла
input_dir=$1
output_dir=$2

#Получаем список файлов во входной директории
files=$(find "$input_dir" -maxdepth 1 -type f)
echo "$files"

#Получаем список директорий во входной директории
dirs=$(find "$input_dir" -maxdepth 1 -type d)
echo "$dirs"

# Получение списка всех файлов
allfiles=$(find "$input_dir" -type f)
echo "$allfiles"

# Копирование файлов
echo "$allfiles" | while read file; do
    cp "$file" "$output_dir"
done

