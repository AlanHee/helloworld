#!/bin/bash
source funs.sh
source ~/.bashrc

remoteIP=""
if [ ! -z $REMOTE_IP ]; then
	remoteIP=$REMOTE_IP
fi

function _() {

	while true; do
		read -p "Type in remote ip (default $remoteIP) : " ssh_ip
		if [ ! -z $ssh_ip ]; then
			remoteIP=$ssh_ip
			break;
		fi
		if [ ! -z $remoteIP ]; then
			break;
		fi
		echo 'IP address can not be empty, try it again.'
	done

	ssh root@$remoteIP "cat >> ~/.ssh/authorized_keys" <~/.ssh/id_rsa.pub
	echo "Pushed ssh public key to server."
}

yesOrNo "Push public key to server(y/n): " _
