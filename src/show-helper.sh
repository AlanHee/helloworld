#!/bin/bash
#helper cmd:
#`fzf` is fast finder
#`bat` better cat
#`xh` like curl
#`atuin` sync history
#`yazi` fast fold brower 

# list
echo "Fun list:"
cmds=(fzf bat xh)
for i in "${!cmds[@]}"; do
	echo "$((i + 1)). ${cmds[$i]}"
done

# read
read -p "Choose in: " choice
size=${#cmds[@]}
cmd=${cmds[choice - 1]}

# check
if ! [[ $choice -le $size ]]; then
	echo "Plesae choose due in 1 to $size."
	exit 1
fi

# determine if install
if ! type $cmd &>/dev/null; then
	apt install -qyy $cmd
fi

if [[ $cmd == "figlet" || $cmd == "toilet" ]]; then
	read -p "type word to show:" word
	exec $cmd $word
elif [[ $cmd == "tldr" ]]; then
	read -p "type cmd to example:" input_cmd
	exec $cmd $input_cmd
else
	exec $cmd
fi
