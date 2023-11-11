#!/bin/bash
source funs.sh
source ~/.bashrc

remoteIP=""
if [ ! -z $REMOTE_IP ]; then
	remoteIP=$REMOTE_IP
fi

function _() {

	while true; do
		read -p "type in vpn server ip(default $remoteIP): " remote_ip
			if [ ! -z $remote_ip ]; then
				remoteIP=$remote_ip
				break;
			fi
			if [ ! -z $remoteIP ]; then
				break;
			fi
			echo 'ip can not be empty'
	done

	echo $remoteIP
	scp root@$remoteIP:/root/vpnclient.sswan ~
	echo 'Got vpn client.'
}

yesOrNo "Get vpn client now (y/n): " _
