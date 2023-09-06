#!/bin/bash
# more detail:
# https://github.com/hwdsl2/setup-ipsec-vpn?mode=dark

while true; do

	read -p 'Setup VPN Server?(y/n):' response
	case $response in
	[Yy]*)
		wget https://get.vpnsetup.net -O vpn.sh && sudo sh vpn.sh
		break
		;;
	[Nn]*)
		exit
		;;
	*)
		echo 'please answer Y or N'
		;;
	esac
done
# after than you has got a vpn server !
# and gen notes below:
#
# Server IP: your ip address
# IPsec PSK: PSK_String
# Username: vpnuser
# Password: password_string
