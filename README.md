# My Dot Files

These are all the files that are used to allow me to set up a new computer just the way I like it.
It's very much dependant on [strap](https://github.com/mikemcquaid/strap), [homebrew](http://brew.sh),
[cask](http://caskroom.io), and a [brewfile](https://github.com/delynn/homebrew-brewfile/blob/master/Brewfile).
I also replace the Bash shell with ZSH and use [anitgen](https://github.com/zsh-users/antigen) to manage my
[personal zsh plug-in](https://github.com/delynn/zsh-files) as well as other [oh-my-zsh](https://ohmyz.sh/) plugins.

## Getting Started

1. Download the [strap.sh](https://macos-strap.herokuapp.com/strap.sh) file, and save it to ~/Downloads
1. Change the URL being used to download git projects by running `sed -i '' 's/https:\/\/github\.com\/$STRAP_GITHUB_USER/git@github.com:\/$STRAP_GITHUB_USER/' ~/Downloads/strap.sh`
1. Open Terminal.app and run `bash ~/Downloads/strap.sh`
1. Take a break (or a power nap), while all the pre-determined dependencies and software is installed.
1. Once the script completes, open a new Terminal (or iTerm) window and make sure the environment works properly.
1. Remove the `strap.sh` file by running `rm -rf ~/Downloads/strap.sh`

## Additional Info

The `script/setup` Ruby script is run at the start of the strap process, and is responsible for creating symlinks
to all the files in the `files` directory into the home directory. The `strap-after-setup` script is run after
strap completes and is responsible for installing python and ruby along with default packages for those languages.
There is also a `bootstrap` script that strap can run prior to the setup process, but this file is just a stubs
at this point as I have not yet found a need for it.
