#Personal aliases
alias develop-sites='cd /home/aperez/Develop/sites'
alias ..='cd ..'
alias lsa='ls -a'
alias rmdir='rm -r'

#Git aliases
alias gcm='git commit -m'
alias gcb='git checkout -b'
alias gc='git checkout'
alias ga.='git add .'
alias ga='git add'
alias gst='git status'
alias gbr='git branch -r'
alias gb='git branch'
alias gp='git pull'
alias gps='git push'
alias gpso='git push origin'
alias gpsom='git push origin master'
alias gpsod='git push origin develop'

#Show actual branch
red=$(tput setaf 1)
black=$(tput setaf 0)
green=$(tput setaf 2)
reset=$(tput sgr0)
bold=$(tput bold)

source /etc/bash_completion.d/git
PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[$bold\]\[$black\]\t\[$reset\] \u \w`if [[ $(__git_ps1 "%s") == "master" ]]; then echo "\[\$bold\]\[\$red\]"; else echo "\[\$green\]"; fi`$(__git_ps1 "(%s)")\[$reset\]\$ '

#Load rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"