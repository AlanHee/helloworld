#!/bin/bash
#ls -Rm $SRCHOME | less

cmd=()
# determine env
if [ "$(uname -o)" = "Android" ]; then
	for i in $(ls $SRC/src/*); do
		cmd[${#cmd[*]}]=$(basename $i)
	done
fi
for item in ${cmd[*]}; do
	echo $item
done
