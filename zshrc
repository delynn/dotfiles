ZSH=$HOME/.oh-my-zsh
ZSH_THEME="berryd"
CASE_SENSITIVE="true"

# Don't use sudo when installing a gem via Rake
SUDOLESS="true"

# Git related environment variables
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true

# Colors
autoload -U colors
colors
setopt prompt_subst

plugins=(brew git-hubflow pow powder rails3 rails4 rbenv sublime berryd)

export PATH="./bin:$HOME/bin:$HOME/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

source $ZSH/oh-my-zsh.sh
source /opt/boxen/env.sh

unsetopt correct_all

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
