#!/bin/bash
function saveConst() {
	if [ ! -e ~/.bashrc ]; then
		touch ~/.bashrc
	fi
	# update var
	if grep -q "export $1=" ~/.bashrc; then
		sed -i "s/^export $1=.*/export $1=$2/" ~/.bashrc
	# add var
	else
		echo "export $1=$2" >>~/.bashrc
	fi
	# export now
	export $1=$2
}

function setSource() {
	if [ ! -e ~/.bashrc ]; then
		touch ~/.bashrc
	fi
	if ! grep -q "~/$1" ~/.bashrc; then
		echo ". ~/$1" >>~/.bashrc
	fi
}

function ga() {
	git gc
	git add .
	git commit -m "$1"
	git push
}

function yesOrNo() {
	while true; do
		read -p "$1" response
		case $response in
		[Yy]*)
			$2
			break
			;;
		[Nn]*)
			break
			;;
		*)
			echo 'please answer Y or N'
			;;
		esac
	done
}
