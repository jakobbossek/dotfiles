#!/bin/sh
# brew.sh
#
# Simple install script for homebrew and homebrew cask
# Installs all the stuff I need to install on a fresh system


# first param - installer (brew cask or brew)
# second param - list of apps to install
install() {
    installer=$1
    programms=$2
    for programm in $programms
    do
        echo "Trying to install '$programm' via '$installer':"
        eval "$installer install $programm"
    done
}

# install raw brew stuff
install "brew" "caskroom/cask/brew-cask ack libgit2 libxml2 openssl autojump tree screen tmux wget git svn zsh"

# install brew cask stuff
install "brew cask" "xquartz mactex iterm2 sublime-text google-chrome skim skitch vlc dropbox python3 skype r"
