#!/bin/bash

alias ls='ls -tlh | less'

function ga(){
	git gc
	git add .
	git commit -m "$1"
	git push
}

function gs(){
	git status
}

