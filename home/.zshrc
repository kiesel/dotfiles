export ZSH=$HOME/.homesick/repos/oh-my-zsh

ZSH_THEME="ys"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"
zstyle ':completion:*' special-dirs true
ZSH_TMUX_AUTOSTART=true

plugins=(git tmux sudo docker jsontools gpg-agent)

source $ZSH/oh-my-zsh.sh
source $HOME/.homesick/repos/homeshick/homeshick.sh
homeshick refresh -q 2

# User configuration
export PATH="$PATH:$HOME/bin:/usr/local/go/bin"
export EDITOR=vim

alias ssr="ssh -l root"
alias dcm="docker-compose"
