#!/bin/bash
source ~/.bashrc

git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"
git config --global credential.helper store
echo 'Git auto credential setup'
