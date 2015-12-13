#!/bin/bash

set -e -u 

cd $HOME

if [ ! -d .homesick/repos/homeshick ]; then
  git clone git://github.com/andsens/homeshick.git .homesick/repos/homeshick --depth=10
fi

if [ ! -d .homesick/repos/dotfiles ]; then
  .homesick/repos/homeshick/bin/homeshick clone kiesel/dotfiles --batch
fi

if [ ! -d .homesick/repos/zgen ]; then
  .homesick/repos/homeshick/bin/homeshick clone tarjoilija/zgen --batch
fi

if [ ! -d .homesick/repos/oh-my-zsh ]; then
  .homesick/repos/homeshick/bin/homeshick clone robbyrussel/oh-my-zsh --batch
fi

.homesick/repos/homeshick/bin/homeshick link --batch

