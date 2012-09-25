c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

export EDITOR='mate -w'

# autocorrect is more annoying than helpful
unsetopt correct_all

# Editor
alias     mate='mate -w'

# Git
alias        g='git'

# List direcory contents
alias      lsa='ls -lah'
alias        l='ls -la'
alias       ll='ls -l'
alias       sl=ls # often screw this up

# Tar
alias     targ='tar xzvf'
alias     tarb='tar xjvf'

# Bundler
alias        b='bundle'
alias       be='bundle exec'
alias       bi='bundle install --binstubs'
alias       bo='bundle open'
alias       bs='bundle show'

# Rails 3
alias       rs='./script/rails server'
alias       rc='./script/rails console'
alias      rst='touch tmp/restart.txt'

# PS
alias       ps='ps aux'
alias      psg='ps | grep '

# OS X
alias dsunhook="find . -name '.DS_Store' -exec rm -rf {} \;"

# Miscellaneous
alias   reload='. ~/.profile'
alias    guard='be guard'

# Tail
alias       tf='tail -f '
alias     tlog='tf ./log/development.log -n 300'
alias    taild='tlog'
alias    tailt='tf ./log/test.log -n 300'

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
