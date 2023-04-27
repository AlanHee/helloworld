#!/bin/bash
read -p "Type in email for gen ssh key(alan.hee@outlook.com):" ssh_email
if [ -z $ssh_email ]; 
then
	ssh-keygen -t rsa -C "alan.hee@outlook.com";
else
	ssh-keygen -t rsa -C "$ssh_email";
fi

echo "setup ssh."
