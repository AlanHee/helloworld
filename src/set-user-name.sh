#!/bin/bash

source funs.sh

name="AlanHee"
if [ ! -z $USER_NAME ]; then
	name=$USER_NAME
fi

read -p "Type in your name: (default: $name)" user_name
if [ ! -z $user_name ]; then
	name="$user_name"
fi

saveExport USER_NAME $name
echo "User name( $name ) setup"
