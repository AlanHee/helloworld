#!/bin/bash

while true; do
	read -p "tell me your vpn server ip(default `echo $REMOTE_IP`): " ip_address
	if [ -z $ip_address ]; then
		if [ ! -z $REMOTE_IP ]; then
   	 		scp root@$REMOTE_IP:/root/vpnclient.sswan ~ 
			break;
		else
    		echo 'remote ip can not be empty'
		fi
	else
    	scp root@$ip_address:/root/vpnclient.sswan ~ 
		break;
	fi

echo 'got vpnclient.sswan file \n'
echo '1 download strongwang app from f-droid or goolge play \n'
echo '2 import it -> run app with the config -> done \n'

done
