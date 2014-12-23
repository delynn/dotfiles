# DeLynn dotfiles

This is a collection of rake tasks and configuration files to set up a new system the way I like it. Installs the following:

* [homebrew](http://brew.sh)
* [git](https://github.com/Homebrew/homebrew/blob/master/Library/Formula/git.rb)
* [rbenv](https://github.com/Homebrew/homebrew/blob/master/Library/Formula/rbenv.rb)
* [zsh](https://github.com/Homebrew/homebrew/blob/master/Library/Formula/zsh.rb)

## Installation

Run the following commands in your terminal. Check out the [Rakefile](https://github.com/delynn/dotfiles/blob/master/Rakefile) to see exactly what it does.

```terminal
xcode-select --install
mkdir ~/src
git clone git://github.com/delynn/dotfiles ~/src/dotfiles
cd ~/src/dotfiles
rake install
```

After installing, open a new terminal window to see the effects. Feel free to customize the .zshrc file to match your preference.

## Features

Many of the following features are added through the "delynn" Oh My ZSH plugin.

I normally place all of my coding projects in ~/src, so this directory can easily
be accessed (and tab completed) with the "c" command.

```terminal
c dot<tab>
```

There is also an "h" command which behaves similar, but acts on the home path.

```terminal
h doc<tab>
```

Tab completion is also added to rake and cap commands:

```terminal
rake db:mi<tab>
cap de<tab>
```

To speed things up, the results are cached in local .rake_tasks~ and .cap_tasks~. It is smart enough to expire the cache automatically in most cases, but you can simply remove the files to flush the cache.

## Uninstall

To uninstall, run the following command from a terminal window. **Note:** this will reset _everything_ associated with your profile.

```terminal
cd ~/src/dotfiles && rake uninstall
```

Then open a new terminal window to see the effects.
