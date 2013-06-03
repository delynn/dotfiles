local current_path='%{$fg_bold[cyan]%}%c%{$reset_color%}'
local ruby_prompt='%{$fg_bold[blue]%}[%{$reset_color%}%{$fg[green]%}$(ruby-prompt)%{$reset_color%}%{$fg_bold[blue]%}]%{$reset_color%}'
local git_branch='%{$fg_bold[blue]%}$(git_prompt_info)'
local my_prompt='%{$fg[cyan]%}$ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ✹%{$fg[blue]%}]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"

PROMPT=" ${current_path} ${ruby_prompt}${git_branch} ${my_prompt}"
