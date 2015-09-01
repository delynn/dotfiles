c() { cd ~/src/$1; }
_c() { _files -W ~/src -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

function ruby-prompt(){
  if (( $+commands[rbenv] ))
  then
    echo "$(rbenv version | awk '{print $1}')"
  else
    echo ""
  fi
}

function railsn(){
  cd ~/src
  rails new $1 -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb
  cd $1
}

# autocorrect is more annoying than helpful
unsetopt correct_all

# Bundler
alias       bc='bundler console'
alias       be='bundler exec'
alias       bs='bundler show'
alias       bo='bundler open'

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
