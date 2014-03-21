c() { cd ~/src/$1; }
_c() { _files -W ~/src -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

ruby-prompt(){
  if (( $+commands[rbenv] ))
  then
    echo "$(rbenv version | awk '{print $1}')"
  else
    echo ""
  fi
}

export EDITOR='atom'

# autocorrect is more annoying than helpful
unsetopt correct_all

# Editor
alias        a='atom -n'
alias        s='atom -n'

# Git
alias        g='git'

# List direcory contents
alias        l='ls -lac'
alias       ll='ls -lc'
alias      lsa='ls -lahc'

# Tar
alias     targ='tar xzvf'
alias     tarb='tar xjvf'

# PS
alias      psa='ps aux'
alias      psg='psa | grep '

# OS X
alias dsunhook="find . -name '.DS_Store' -exec rm -rf {} \;"
alias     logs="find ~ -name '*.log' -print0 | xargs -0 -L1 stat -f'%z %N' | sort -rn | tee fat-logfiles.txt | head"

# Miscellaneous
alias   reload='. ~/.zshrc'
alias    guard='be guard'

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
