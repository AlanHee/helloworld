#!/bin/bash
alias vi='vim'
alias lss='ls -tlh | less'
alias gs='git status'
alias sm='show-menu.sh'
alias ss='show-status.sh'
alias sf='show-funs.sh'
alias cs='connect-to-server.sh'
alias ss='sync-to-server.sh'
alias gat="ga $(date)"
alias pub="dart pub"

#fixed scp error should no echo nothing
#scp: Received message too long 1819238756
#scp: Ensure the remote shell produces no output for non-interactive sessions.
#echo "loading alias"
