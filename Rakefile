require 'rake'
require 'erb'
require 'fileutils'

task :brew_packages do
  brew *%w(git)
end

task :cask do
  brew *%w(caskroom/cask/brew-cask)
end

task :cask_packages do
  cask *%w(atom backblaze dropbox google-chrome iterm2 mailplane sublime-text textexpander vagrant virtualbox)
end

desc "install the dot files into user's home directory"
task install: [:homebrew, :zsh, :ohmyzsh, :link_files, :ruby, :brew_packages, :cask, :cask_packages]
task default: 'install'

task :hidden_files do
  replace_all  = false
  files        = Dir['*'] - %w[.gitignore Rakefile README.md LICENSE oh-my-zsh]

  files.each do |file|
    system %Q{mkdir -p "$HOME/.#{File.dirname(file)}"} if file =~ /\//
    if File.exist?(File.join(ENV['HOME'], ".#{file.sub(/\.erb$/, '')}"))
      if File.identical? file, File.join(ENV['HOME'], ".#{file.sub(/\.erb$/, '')}")
        puts "identical ~/.#{file.sub(/\.erb$/, '')}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file.sub(/\.erb$/, '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file.sub(/\.erb$/, '')}"
        end
      end
    else
      link_file(file, '.')
    end
  end
end

task :homebrew do
  system %Q{ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"}
end

task link_files: [:hidden_files, :ohmyzsh_files]

task :ohmyzsh do
  if File.exist?(File.join(ENV['HOME'], 'src', 'oh-my-zsh')) == false
    system %Q{mkdir -p "$HOME/src" && git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/src/oh-my-zsh"}
  end
end

task :ohmyzsh_files do
  %w(
    oh-my-zsh/custom/plugins/delynn
    oh-my-zsh/custom/delynn.zsh-theme
  ).each do |file|
    link_file(file, 'src/')
  end
end

task :ruby do
  brew *%w(rbenv ruby-build rbenv-default-gems rbenv-gem-rehash)
  system %Q{echo 'bundler' >> `rbenv root`/default-gems}
end

task :uninstall do
  Dir.chdir(`brew --prefix`.chomp) do
    system %Q{git checkout master}
    system %Q{git ls-files -z | pbcopy}
    system %Q{rm -rf Cellar}
    system %Q{bin/brew prune}
    system %Q{pbpaste | xargs -0 rm}
    system %Q{rm -r Library/Homebrew Library/Aliases Library/Formula Library/Contributions}
    system %Q{test -d Library/LinkedKegs && rm -r Library/LinkedKegs}
    system %Q{rmdir -p bin Library share/man/man1 2> /dev/null}
    system %Q{rm -rf .git ~/Library/Caches/Homebrew ~/Library/Logs/Homebrew /Library/Caches/Homebrew}
  end
  Dir.chdir(ENV['HOME']) do
    Dir.glob('.*').each do |file|
      if File.symlink?(file)
        File.unlink(file)
      end
    end
  end
  FileUtils.rm_rf(File.expand_path('~/src/oh-my-zsh/'))
  FileUtils.rm_rf(File.expand_path('~/Applications/*'))
  system %Q{chsh -s `which bash`}
end

task :zsh do
  if ENV['SHELL'] !~ /zsh/
    `brew install zsh`
    zsh = `command -v zsh`
    system %Q{echo '#{zsh}' | sudo tee -a /etc/shells}
    system %Q{chsh -s #{zsh}}
  end
end

def brew(*args)
  system %Q{brew install #{args.join(' ')}}
end

def cask(*args)
  system %{brew cask install #{args.join(' ')}}
end

def link_file(file, prefix)
  if file =~ /.erb$/
    puts "generating ~/#{prefix}#{file.sub(/\.erb$/, '')}"
    File.open(File.join(ENV['HOME'], "#{prefix}#{file.sub(/\.erb$/, '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    puts "linking ~/#{prefix}#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/#{prefix}#{file}"}
  end
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file.sub(/\.erb$/, '')}"}
  link_file(file)
end
