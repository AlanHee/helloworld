#!/bin/bash
# by Alan Hee
# email: alan.hee@outlook.com

source functions.sh

read -p "Type in your name: " user_name 
setVar USER_NAME $user_name
read -p "Type in your email: " user_email
setVar USER_EMAIL $user_email

source ~/.bashrc
