#!/bin/bash
source funs.sh

remotePort=22
if [ ! -z $REMOTE_SSH_PORT ]; then
	remotePort=$REMOTE_SSH_PORT
fi

read -p "Set up remote ip($remotePort):" remote_port
if [ ! -z $remote_port ]; then
	remotePort=$remote_port
fi

saveExport REMOTE_SSH_PORT $remotePort
echo "Remote IP($remotePort) setup"
