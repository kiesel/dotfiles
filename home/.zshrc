export ZSH=$HOME/.homesick/repos/oh-my-zsh

ZSH_TMUX_AUTOSTART=true

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

	zgen load zsh-users/zsh-syntax-highlighting
	zgen load zsh-users/zsh-completions src

	zgen load kiesel/wormhole

	zgen save
fi

# User configuration
export PATH="$PATH:$HOME/bin:/usr/local/go/bin"
export EDITOR=vim

alias ssr="ssh -l root"
alias hs="homeshick"
