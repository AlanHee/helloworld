#!/bin/bash
#options

#with bandwith limt 50%
#rsync --bwlimit=50

#with date for sync bakcup
#rsync -av /home/test/Desktop/Linux /home/test/Desktop/rsync$(date +%Y-%m-%d)

#just run see the diff
#rsync --dry-run

#apt install rsync -y
rsync -av --progress --delete /data/data/com.termux/files/home/server root@164.155.108.126:/root/server/
echo 'well done'
