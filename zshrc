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

plugins=(atom brew bundler docker git-hubflow history rails rbenv zsh_reload delynn)

export PATH="$HOME/bin:$HOME/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

eval "$(docker-machine env default)"

source $ZSH/oh-my-zsh.sh
