ZSH=$HOME/src/oh-my-zsh
ZSH_THEME="delynn"
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

plugins=(brew bundler common-aliases git-hubflow history rand-quote rails rbenv sublime delynn)

export PATH="$HOME/bin:$HOME/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

source $ZSH/oh-my-zsh.sh

if [[ -a /opt/boxen/env.sh ]]; then source /opt/boxen/env.sh; fi

quote
