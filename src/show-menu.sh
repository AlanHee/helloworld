#!/bin/bash

cmd=()
# determine env
if [ "$(uname -o)" = "Android" ]; then
	for i in $(ls $SRCHOME/*); do
		cmd[${#cmd[*]}]=$(basename $i)
	done
fi
		for item in ${cmd[*]}; do
	echo $item
done
