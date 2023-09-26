#!/bin/bash

folder="$SRCHOME"

file_count=$(find "$folder" -type f | wc -l)

total_lines=0
for file in $( find "$folder" -type f ); do 
    lines=$(wc -l < "$file")
    total_lines=$((total_lines + lines))
done;

echo "Total file count：$file_count"
echo "Total line count：$total_lines"
