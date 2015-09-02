##
# Your previous /Users/Kyle/.bash_profile file was backed up as /Users/Kyle/.bash_profile.macports-saved_2014-09-03_at_11:19:45
##

# MacPorts Installer addition on 2014-09-03_at_11:19:45: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export MAMP_PHP=/Applications/MAMP/bin/php/php5.5.14/bin
export PATH="$MAMP_PHP:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="~/.composer/vendor/bin:$PATH"
# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}


## Tools
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

# Aliases


## Shortcuts
alias ll='ls -al'
alias editgit='subl ~/.gitconfig'
alias editbash='subl ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias vi=vim

## Git commands
alias log='git log'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'
alias gmghp='git merge gh-pages'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'
alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"

## Git branch switching
alias master='git co master'
alias ghp='git co gh-pages'

## Build tools
alias gd='gulp'

## SVN
alias up='svn up'
alias sst='svn st'

## Switch repos
DIR=~/Desktop/Development
alias h='cd ~/'
alias d='cd ~/Desktop'
alias w='cd ${DIR}'
alias web='cd ${DIR}/Web'
alias ios='cd ${DIR}/iOS'


## Core GitHub apps
alias gh='cd ~/github'
alias gg='cd ~/github/github'
alias ggg='gg && script/server'
alias giants='cd ~/github/giants'
alias hire='cd ~/github/hire'
alias summit='cd ~/github/summit'
alias primer='cd ~/github/primer'

## Server guick starts
alias ss='script/server'
alias js='jekyll serve --watch'
alias ps='python -m SimpleHTTPServer 4000'
alias gtest='testrb test/integration/bundle_test.rb'

## Mobile iOS testing
alias ios='open /Applications/Xcode.app/Contents/Applications/iOS\ Simulator.app'

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
