#!/bin/bash
# pull and run Oh My Fish installer

curl -L http://get.oh-my.fish >$HOME/install.fish
fish $HOME/install.fish --noninteractive --yes
rm -f $HOME/install.fish
