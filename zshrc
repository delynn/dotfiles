# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Anitgen in the oh-my-zsh's library.
antigen use oh-my-zsh

# Antigen Bundles from robbyrussell's oh-my-zsh
antigen bundle bundler
antigen bundle rbenv
antigen bundle ruby

# Antigen Bundles
antigen bundle delynn/zsh-files
# antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-syntax-highlighting

# Antigen Theme
antigen theme delynn/zsh-files themes/delynn

antigen update

antigen apply
