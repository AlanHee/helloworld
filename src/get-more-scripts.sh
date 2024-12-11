#!/bin/bash
source funs.sh

list=(mac utils devops ubuntu cookbook config)
for i in "${!list[@]}"; do
	echo "[$((i + 1))] ${list[$i]}"
done

let size=${#list[@]}
read -p "Choose in: " choice
# check
if ! [[ $choice -le $size ]]; then
	echo "Plesae choose due in 1 to $size."
	exit 1
fi

git clone https://github.com/alanhee/hello-${list[choice - 1]} $SRC/src/${list[choice - 1]}
