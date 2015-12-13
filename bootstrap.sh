#!/bin/bash

set -e -u 

cd $HOME

if [ ! -d .homesick/repos/homeshick ]; then
  git clone git://github.com/andsens/homeshick.git .homesick/repos/homeshick --depth=10
fi

if [ ! -d .homesick/repos/dotfiles ]; then
  .homesick/repos/homeshick/bin/homeshick clone git://github.com/kiesel/dotfiles --batch
fi

if [ ! -d .homesick/repos/zgen ]; then
  .homesick/repos/homeshick/bin/homeshick clone git://github.com/tarjoilija/zgen --batch
fi

if [ ! -d .homesick/repos/oh-my-zsh ]; then
  .homesick/repos/homeshick/bin/homeshick clone git://github.com/robbyrussell/oh-my-zsh.git  --batch
fi

.homesick/repos/homeshick/bin/homeshick link --batch

