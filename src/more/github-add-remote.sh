#!/bin/bash
read -p "github repos name:" repo_name
if [ -z $repo_name ]; 
then
	echo 'oop error'
else
    git remote remove origin
	git remote add origin git@github.com:AlanHee/$repo_name.git
fi
git branch -M main
git push -u origin main
