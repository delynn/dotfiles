c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

export EDITOR='subl'

# autocorrect is more annoying than helpful
unsetopt correct_all

# Editor
alias  	  mate='subl'

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
alias       bo='bundle open'

# Rails 2
alias       ss='./script/server'
alias       sc='./script/console'

# Rails 3
alias       rs='./script/rails server'
alias       rc='./script/rails console'
alias      rst='touch tmp/restart.txt'

# PS
alias       ps='ps aux'
alias      psg='ps aux | grep '

# OS X
alias dsunhook="find . -name '.DS_Store' -exec rm -rf {} \;"

# Miscellaneous
alias   reload='. ~/.profile'

# Directory Aliases
alias     code='cd ~/code'
alias    coder='cd ~/code/rails'
alias    codeg='cd ~/code/git'
alias    codey='cd ~/code/ruby'
alias   codepw='cd ~/code/rails/pinnacol-www'

# Tail
alias       tf='tail -f '
alias     tlog='tail -n 300 -f ./log/development.log'

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
