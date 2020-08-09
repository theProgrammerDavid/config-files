#### DOCKER STUFF ####
alias dps='docker ps'
alias dsa='docker stop $(docker ps -aq)'
alias dsp='docker system prune'
alias dspa='docker system prune -a'

####

#### BASH ALIASES #####
function cdd(){
 cd $1
 ls
}
alias ll='ls -l'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias count='find . -type f | wc -l'
alias cpv='rsync -ah --info=progress2'
####

#### UBUNTU STUFF
alias pug='sudo pacman -Syyu'
####

#### SSH STUFF ####

export csihost='login.csivit.com'
export breakerhost='login.breaker.csivit.com'
export david1host='192.168.0.107'
export david2host='192.168.0.106'

alias sshcsi='ssh root@login.csivit.com'
alias sshbr='ssh root@login.breaker.csivit.com'
alias sshd1='ssh david@192.168.0.107'
alias sshd2='ssh david@192.168.0.106'


####


#### C++ STUFF

function gcpp(){
 g++ "$1".cpp -o"$1" &&
 ./$1
}
function gccc(){
 gcc "$1".c -o "$1" &&
 ./$1
}

####



#### RANDOM STUFF ####

#display random man page
function rmp(){
man `find /usr/share/man/man1/ -type f | shuf | awk -F '/' '/1/ {print $6}' | sed 's/.gz//g' | head -1`
}
####


#### MONITORING ####

## pass options to free ##
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

####
