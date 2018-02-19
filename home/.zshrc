export ZSH=$HOME/.homesick/repos/oh-my-zsh

ZSH_TMUX_AUTOSTART=true
export SSH_HTTP_PROXY=${${http_proxy#http://}%/}

source $HOME/.homesick/repos/homeshick/homeshick.sh
homeshick refresh -q 2

source $HOME/.homesick/repos/zgen/zgen.zsh
if ! zgen saved; then

	zgen oh-my-zsh
	zgen oh-my-zsh plugins/git
	zgen oh-my-zsh plugins/tmux
	zgen oh-my-zsh plugins/sudo
	zgen oh-my-zsh plugins/docker
	zgen oh-my-zsh plugins/jsontools
	zgen oh-my-zsh themes/ys
	zgen oh-my-zsh plugins/composer
	zgen oh-my-zsh plugins/gpg-agent

	zgen load zsh-users/zsh-syntax-highlighting
	zgen load zsh-users/zsh-completions src

	zgen load kiesel/wormhole

	zgen save
fi

# User configuration
export PATH="$PATH:$HOME/bin:$HOME/go/bin:/usr/local/go/bin:$HOME/.local/bin"
export EDITOR=vim
export CDPATH=~:~/dev

alias ssr="ssh -l root"
alias hs="homeshick"

alias reload="echo Reloading zshrc ; . ~/.zshrc"
alias zshrc="${EDITOR} ~/.zshrc && reload"
