#!/bin/bash
read -p "tell me your vpn server ip:" ip_address
if [ -z $ip_address ]; 
then
    echo 'done nothing'
else
    scp root@$ip_address:/root/vpnclient.sswan ~ 
	echo 'got vpnclient.sswan file \n'
	echo '1 download strongwang app from f-droid or goolge play \n'
	echo '2 import it -> run app with the config -> done \n'
fi