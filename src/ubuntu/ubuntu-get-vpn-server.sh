#!/bin/bash
sources $SRCHOME/pre-load-functions.sh
yesOrNo "Set VPN Server?(y/n)" "wget https://get.vpnsetup.net -O vpn.sh && sudo sh vpn.sh"
