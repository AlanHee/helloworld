#!/bin/bash
source ~/.bashrc

echo "user name: $USER_NAME"
echo "user email: $USER_EMAIL"
git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"
echo 'Git global name & email setup'
git config --global credential.helper store
echo 'Git auto credential setup'
