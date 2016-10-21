# Path to your oh-my-zsh installation.
export ZSH=/Users/kyle/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="lambda"
# muse, robbyrussell, sorin

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true
# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# [[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile


## Tools
alias subl='/Applications/sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias edit='subl'                           # edit:         Opens any file in atomime editor

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation

alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias c='clear'                             # c:            Clear terminal display
# alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
nr () { npm run "$1" }
ns () { npm start }

## Shortcuts
alias editgit='edit ~/.gitconfig'
alias editbash='edit ~/.bash_profile'
alias editzsh='edit ~/.zshrc'
alias resource='source ~/.zshrc && echo "Done!"'
alias vi=vim
alias hunt='ack -i --pager="less -R -S -X"'

## Git commands
alias log='git log'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'
alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"

## Switch repos
PROJECTS=~/Projects
alias d='cd ~/Desktop'
alias w='cd ${PROJECTS}'
alias pims='cd ${PROJECTS}/pims'
alias brochure='cd ${PROJECTS}/brochure'
alias clinic='cd ${PROJECTS}/clinic'

## Server guick starts
alias ss='script/server'
alias js='jekyll serve --watch'
alias serve='python -m SimpleHTTPServer 4000'
alias be='bundle exec'

#alias mysql=/Applications/MAMP/Library/bin/mysql
alias tunnelBeta="ssh -L 6374:127.0.0.1:6374 162.216.42.87"
alias tunnelQa="ssh -L 8484:127.0.0.1:8484 204.13.108.176"

alias composer="php /usr/local/bin/composer.phar"

export PATH=/usr/local/bin:/usr/bin:/bin:/opt/local/bin:/opt/local/sbin:~/Library/Android/sdk/tools:$PATH
export PATH=/Applications/MAMP/bin/php/php5.6.10/bin:$PATH
export ANDROID_HOME=/Users/kyle/Library/Android/sdk
export JAVA_HOME=$(/usr/libexec/java_home)
export DATABASE_URL="mysql://root:root@localhost/pd_api"
# Load NVM
export NVM_DIR="/Users/kyle/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Load RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
