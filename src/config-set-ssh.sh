#!/bin/bash
source funs.sh

remoteIP="0.0.0.0"
remotePort=22

if [ ! -z $REMOTE_IP ]; then
	remoteIP=$REMOTE_IP
fi

read -p "Set up remote ip($remoteIP):" remote_ip
if [ ! -z $remote_ip ]; then
	remoteIP=$remote_ip
fi

saveExport REMOTE_IP $remoteIP
echo "SSH IP:$remoteIP"

if [ ! -z $REMOTE_SSH_PORT ]; then
	remotePort=$REMOTE_SSH_PORT
fi

read -p "Set up remote ip($remotePort):" remote_port
if [ ! -z $remote_port ]; then
	remotePort=$remote_port
fi

saveExport REMOTE_SSH_PORT $remotePort
echo "SSH port:$remotePort"
echo "SSH setup"
