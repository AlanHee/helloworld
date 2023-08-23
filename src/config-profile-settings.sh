#!/bin/bash

read -p "Type in your name: " user_name 
saveConst USER_NAME $user_name
read -p "Type in your email: " user_email
saveConst USER_EMAIL $user_email

source ~/.bashrc
