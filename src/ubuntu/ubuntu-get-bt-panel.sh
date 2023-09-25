#!/bin/bash

source $SRCHOME/pre-load-functions.sh

yesOrNo "Setup baoto panel?(y/n)" `wget -O install.sh https://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh ed8484bec`
