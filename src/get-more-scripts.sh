#!/bin/bash
source funs.sh

list=(mac utils devops)
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

git clone git@github.com:alanhee/hello-devops.git $SRC/src/${list[choice - 1]}
