#!/bin/bash

read -p "Type in your name: " user_name 
setVar USER_NAME $user_name
read -p "Type in your email: " user_email
setVar USER_EMAIL $user_email

source ~/.bashrc
