#!/bin/bash

set -e -u 

cd $HOME
git clone git://github.com/andsens/homeshick.git --depth=10

.homesick/repos/homeshick/bin/homeshick clone kiesel/dotfiles
.homesick/repos/homeshick/bin/homeshick clone tarjoilija/zgen

.homesick/repos/homeshick/bin/homeshick link --batch

