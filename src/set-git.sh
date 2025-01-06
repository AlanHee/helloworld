#!/bin/bash
source ~/.bashrc

echo "user name: $USER_NAME"
echo "user email: $USER_EMAIL"
git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"
echo 'Setup global git name & mail.'
git config --global credential.helper store
echo 'Git auto credential setup'
echo 'Setup git auto creditial.'
