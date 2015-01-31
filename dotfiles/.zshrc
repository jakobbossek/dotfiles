# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="jakobbossek"
#ZSH_THEME="3den"

# Example aliases
# alias zshconfig="subl ~/.zshrc"
# alias ohmyzsh="subl ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# autojump stuff
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/texlive/2011/bin/x86_64-darwin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/local/rvm/gems/ruby-1.9.3-p194/bin:/usr/local/rvm/gems/ruby-1.9.3-p194@global/bin:/usr/local/rvm/rubies/ruby-1.9.3-p194/bin:/usr/local/rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/wayneeseguin/.sm/bin:/Users/wayneeseguin/.sm/pkg/active/bin:/Users/wayneeseguin/.sm/pkg/active/sbin:$HOME/bin:/usr/texbin

# set php path to newest php verison available in MAMP
export PATH=/Applications/MAMP/bin/php/php5.4.4/bin:$PATH

# -----------------------------------------
# History
# -----------------------------------------
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt autocd # type /mydir instead od cd /mydir

autoload -U compinit
compinit -i
setopt complete_in_word
setopt always_to_end
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# -----------------------------------------
# General helpful aliases
# -----------------------------------------
alias dir='ls'
alias ls='ls -F'
alias lsal='ls -al'
alias cls='clear'
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias repos='cd ~/repositories/'

# -----------------------------------------
# Programming language specific aliases
# -----------------------------------------
alias R='R --no-save --no-restore-data --quiet'

# -----------------------------------------
# git aliases
# -----------------------------------------
alias gpu='git push'
alias gp='git pull'
alias gco='git commit'
alias gcom='git commit -m'
alias gst='git status'
alias ga='git add'
alias gbl='git blame'
alias gcl='git clone'
alias gch='git checkout'
alias gbr='git branch'
alias glog="git log --pretty=format:'%C(yellow)%h%Creset | %s%d [%C(red)%an%Creset@%ad]' --date=short"

# -----------------------------------------
# brew aliases
# -----------------------------------------
alias bup='brew update && brew upgrade && brew upgrade brew-cask'
alias bcl='brew cleanup && brew cask cleanup'
alias bdoc='brew doctor'

# open my todo markdown file
alias todo='subl ~/Desktop/ToDo.md'

# open some important URLs
alias mygh='open https://github.com/jakobbossek'

function dict() {
    open "http://www.dict.cc/?s=$1"
}
