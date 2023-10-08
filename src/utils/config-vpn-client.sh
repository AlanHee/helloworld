#!/bin/bash
source $SRCHOME/pre-load-functions.sh

function _() {

	while true; do
		read -p "type in vpn server ip(default $(echo $REMOTE_IP)): " ip_address
		if [ -z $ip_address ]; then
			if [ ! -z $REMOTE_IP ]; then
				scp root@$REMOTE_IP:/root/vpnclient.sswan ~
				break
			else
				echo 'ip can not be empty'
			fi
		else
			scp root@$ip_address:/root/vpnclient.sswan ~
			break
		fi

		echo 'got vpnclient.sswan file \n'
		echo '1 download strongwang app from f-droid or goolge play \n'
		echo '2 import it -> run app with the config -> done \n'

	done
}

yesOrNo "Get vpn client now (y/n): " _
