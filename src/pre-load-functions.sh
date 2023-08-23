#!/bin/bash

function saveConst()
{
	if [ ! -e ~/.bashrc ]; then
		touch ~/.bashrc
	fi
	# update var 
	if grep -q "export $1=" ~/.bashrc; then
		echo "update $1 const"
		sed -i "s/^export $1=.*/export $1=~/$2/" ~/.bashrc
	# add var 
	else
		echo "add $1 const"
		echo "export $1=~/$2" >> ~/.bashrc
	fi
	# export now
	export $1=$2
}

function setSource()
{
	if [ ! -e ~/.bashrc ]; then
		touch ~/.bashrc
	fi
	if ! grep -q "~/$1" ~/.bashrc; then
		echo "source ~/$1" >> ~/.bashrc
	fi
}
