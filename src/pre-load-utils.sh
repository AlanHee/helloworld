#!/bin/bash

alias lss='ls -tlh | less'
alias gs='git status'

function ga(){
	git gc
	git add .
	git commit -m "$1"
	git push
}
