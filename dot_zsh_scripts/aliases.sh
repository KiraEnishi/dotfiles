#!/bin/bash

# ALIASES
# #######

# List
alias  l='ls -FG'
alias la='ls -FGalh'
alias ll='ls -FG1'

# Directories
alias dotfiles="cd $dotfiles"
alias     crap="cd ~/crap"
# alias     code="cd ~/code"
alias  clients="cd ~/code/sruplex/clients"

# Edit .zshrc file
alias zshrc="$EDITOR $zshrc"

# Lock Screen
alias lockscreen='pmset displaysleepnow'

# Reload settings or hardware
alias reload!="source $zshrc"
alias reload="echo 'Use \"reload!\" instead'"
# alias reload-wifi='sudo iwlist wlp3s0 scan'
alias reload-audio='sudo killall coreaudiod'
alias reload-touchbar="sudo pkill TouchBarServer && sudo killall ControlStrip && sudo pkill NowPlayingTouchUI"

# Networking
alias sshproxy='echo "Starting proxy server on port 5555..."; ssh -qTnN -D 5555'
alias pubip='curl ipv4.icanhazip.com'
alias myip="ifconfig | grep inet | grep -vE '(inet6|127.0.0.1)' | awk '{print $2}' | awk -F ':' '{print $2}'"
alias mymac='ifconfig en0 | grep ether'

# Random
alias fsize='du -hs'
alias dsize='du -h -d 1'
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,node_modules,deps} -i --color'

# Print variations of HDD trees generated by:
# --> https://github.com/sheharyarn/tree-backup
alias psytree-root='grep -e "^|-- \["'
alias psytree-dirs='grep -e "\/$" | sed "s/^|--/|\n|--/g"'

# Applications
alias vsc='open -a "Visual Studio Code"'

# Make sudo work with aliases
alias sudo='sudo '

# Brew
alias brew-dump="brew bundle dump --file=$DOTFILES/Brewfile --force"