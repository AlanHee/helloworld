#!/bin/bash

apt update -y 

yesOrNo "Install ssh git nvim shfmt dart?(y/n):" "apt install -y openssh git neovim dart"
