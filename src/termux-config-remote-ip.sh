#!/bin/bash

read -p "Set up remote ip:" remote_ip 
if [ -z $remote_ip ]; 
then
	echo 'remote no change yet'
else
	# update var weather existed 
	if grep -q "export REMOTE_IP=" ~/.bashrc; then
		echo 'update remote ip'
		sed -i "s/^export REMOTE_IP=.*/export REMOTE_IP=$remote_ip/" ~/.bashrc
	# add var weather not set yet
	else
		echo 'export remote ip'
		echo "export REMOTE_IP=$remote_ip" >> ~/.bashrc
	fi
fi

#export now
if [ -e ~/.bashrc ]; then
	source ~/.bashrc
	echo "export REMOTE_IP as `echo $remote_ip`"
fi
