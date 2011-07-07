# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

[[ -f /etc/profile.d/bash-completion.sh ]] && source /etc/profile.d/bash-completion.sh

# Put your fun stuff here.
if [ -d ~/bin ]; then
	export PATH=$PATH:~/bin;
fi

export FIGNORE=CVS:.svn
export GREP_OPTIONS="--exclude-dir=.svn --color=auto"
export CDPATH=.:~/dev/xp.public:~/dev/xp.private/trunk/xp5:~/dev/xp.private/trunk:~/dev/bit_config/
export DIFF_OPTIONS=-u
export SYBASE=/opt/sybase-12.5
export LC_CTYPE="de_DE@euro"
export MYSQL_PS1="[\c] \u@\h.\d> "
export CP_INFRASTRUCTURE=$HOME/dev/xp.private/trunk/xp5/projects/infrastructure/installer/src/
export CFGBASE=$HOME/dev/bit_config/svc/config/
export EDITOR=/usr/bin/vim
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\$(__git_ps1 ' [\[\033[01;32m\]%s\[\033[01;34m\]] ')\$\[\033[00m\] "

# Until ant-1.8.2 in portage
export ANT_HOME=/home/ak/bin/apache-ant-1.8.2/
export PATH=/home/ak/bin/apache-ant-1.8.2/bin:$PATH

eval `keychain -q --eval --agents ssh`


