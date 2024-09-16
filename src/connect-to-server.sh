#!/bin/bash
remotePort=""
if [ ! -z $1 ]; then
	remotePort=$1
elif [ ! -z $REMOTE_SSH_PORT ]; then
	remotePort=$REMOTE_SSH_PORT
else
	remotePort=22
fi
if [ ! -z $REMOTE_IP ]; then
	ssh root@$REMOTE_IP -p $remotePort
else
	while true; do
		read -p 'type in remote ip:' remote_ip
		if [ ! -z $remote_ip ]; then
			ssh root@$remote_ip -p $remotePort
			break
		else
			echo 'remote ip can be empty.'
		fi
	done
fi
