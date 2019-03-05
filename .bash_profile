#export PROXY=http://proxy.shanghai.mintel.ad
export PROXY=http://172.20.4.38
export http_proxy=$PROXY:3128
export https_proxy=$PROXY:3128
export HTTP_PROXY=$PROXY:3128
export HTTPS_PROXY=$PROXY:3128

alias home='cd ~/WorkingDir'
alias cddo='cd ~/Downloads'
alias cdde='cd ~/Desktop'
alias sb='source ~/.bash_profile'
alias restart='sudo reboot -h now'
alias shutdown='sudo shutdown -h now'
alias st='ssh tzhu@dev-ted01.shanghai.mintel.ad'
#alias st='ssh tzhu@172.20.4.29'
alias v='vim'
PRO_HOME=$HOME/Projects
alias cdpr='cd ${PRO_HOME}'

# tmux
alias tn='tn() { tmux new -s $1; };tn'
alias tk='tk() { tmux kill-session -t $1; };tk'
alias ta='ta() { tmux attach -t $1; };ta'
alias td='td() { echo 'te'; };test'
alias tl='tmux ls'
source ~/.tmuxinator/.tmuxinator.bash
export EDITOR='vim'

### START-Keychain ###
# Let  re-use ssh-agent and/or gpg-agent between logins
/usr/bin/keychain $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh
### End-Keychain ###

export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

