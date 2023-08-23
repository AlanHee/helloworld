#!/bin/bash

function saveConst()
{
	if [ ! -e ~/.bashrc ]; then
		touch ~/.bashrc
	fi
	# update var 
	if grep -q "export $1=" ~/.bashrc; then
		# fixed ~/ if is $PATH 
		if [ -z $3 ] ; then
			sed -i "s/^export $1=.*/export $1=$2/" ~/.bashrc
		else
			sed -i "s/^export $1=.*/export $1=~/$2/" ~/.bashrc
		fi
	# add var 
	else
		# fixed ~/ if is $PATH 
		if [ -z $3 ] ; then
			echo "export $1=$2" >> ~/.bashrc
		else
			echo "export $1=~/$2" >> ~/.bashrc
		fi
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

function ga(){
	git gc
	git add .
	git commit -m "$1"
	git push
}

function mkcd(){
	mkdir $1
	cd $1
}
