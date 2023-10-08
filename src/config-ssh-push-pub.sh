#!/bin/bash
source $SRCHOME/pre-load-functions.sh

function _() {

	while true; do
		read -p "Type in remote ip (default $(echo $REMOTE_IP)) : " ssh_ip
		if [ -z $ssh_ip ]; then
			if [ ! -z $REMOTE_IP ]; then
				ssh root@$REMOTE_IP "cat >> ~/.ssh/authorized_keys" <~/.ssh/id_rsa.pub
				break
			else
				echo "Ip address can not be empty."
			fi
		else
			ssh root@$ssh_ip "cat >> ~/.ssh/authorized_keys" <~/.ssh/id_rsa.pub
			break
		fi
	done

	echo "setup push ssh public key to server."
}

yesOrNo "Push pub key to server(y/n): " _
