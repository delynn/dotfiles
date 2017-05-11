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

plugins=(atom brew bundler git-hubflow history rand-quote rails rbenv zsh_reload delynn zsh-completions)
autoload -U compinit && compinit

export PATH="$HOME/bin:$HOME/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/Applications/Postgres.app/Contents/Versions/latest/bin"

eval "$(docker-machine env default)"

source $ZSH/oh-my-zsh.sh
