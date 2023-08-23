#!/bin/bash
# Create by AlanHee (alan.hee@outlook.com)
# On: 2023/08/07

function setVar()
{
	if [ ! -e ~/.bashrc ]; then
		touch ~/.bashrc
	fi
	# update var 
	if grep -q "export $1=" ~/.bashrc; then
		echo "update $1 const"
		sed -i "s/^export $1=.*/export $1=$2/" ~/.bashrc
	# add var 
	else
		echo "add $1 const"
		echo "export $1=$2" >> ~/.bashrc
	fi
	# export now
	export $1=$2
}

function setSource()
{
	source $1
	if grep -q "$1" ~/.bashrc; then
		echo "$1" >> ~/.bashrc
	fi
}
