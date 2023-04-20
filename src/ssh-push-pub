while true; do
	read -p "Type in romote IP address:" ssh_ip
	if [ -z $ssh_ip ]; 
	then
		echo "Ip address can not be empty.";
	else 
		ssh root@$ssh_ip "cat >> ~/.ssh/authorized_keys" < ~/.ssh/id_rsa.pub
		break;
	fi
done

echo "setup push ssh public key to server."
