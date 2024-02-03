#!/bin/bash
source funs.sh

function getMacScripts() {
	git clone git@github.com:alanhee/hello-mac.git $SRC/src/mac
}

function getUtilScripts() {
	git clone git@github.com:alanhee/hello-utils.git $SRC/src/utils
}

function getDevopsScripts() {
	git clone git@github.com:alanhee/hello-devops.git $SRC/src/devops
}

yesOrNo "Get Devops scripts?(y/n):" getDevopsScripts
yesOrNo "Get Mac scripts?(y/n):" getMacScripts
yesOrNo "Get Utils scripts?(y/n):" getUtilScripts
