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
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation

alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias c='clear'                             # c:            Clear terminal display
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview

## Edit Shortcuts
alias subl='/Applications/sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias edit='atom'                           # edit:         Opens any file in atomime editor
alias editgit='edit ~/.gitconfig'
alias editbash='edit ~/.bash_profile'
alias editzsh='edit ~/.zshrc'
alias resource='source ~/.zshrc'
alias vi=vim

## Useful Bash Commands
alias hunt='ack -i --pager="less -R -S -X"'
alias serve='python -m SimpleHTTPServer 4000'
avglines () {wc -l **/*.$1 | awk '{if($2 != "total"){s+=$1}} END {print "Average lines: " s/NR " lines"}'}

## NPM stuff
alias ni='npm install'
alias nis='npm install --save'
alias nid='npm install --save-dev'
alias nig='npm install --global'
alias ns='npm start'
alias nt='npm test'
alias nit='npm install && npm test'
alias nk='npm link'
alias nr='npm run'
alias nf='npm cache clean && rm -rf node_modules && npm install'
alias nlg='npm list --global --depth=0'
alias no='npm outdated --depth=0'
alias nog='npm outdated --global --depth=0'

## Server quick starts
alias ss='script/server'
alias js='jekyll serve --watch'

alias be='bundle exec'

## Work Stuff
WORK_DIR=~/Work
PROJECT_DIR=~/Projects
alias d='cd ~/Desktop'
alias w='cd ${WORK_DIR}'
alias p='cd ${PROJECT_DIR}'
alias pims='cd ${WORK_DIR}/pims'
alias brochure='cd ${WORK_DIR}/brochure'
alias clinic='cd ${WORK_DIR}/clinic'
alias tunnelBeta="ssh -L 6374:127.0.0.1:6374 162.216.42.87"
alias tunnelQa="ssh -L 8484:127.0.0.1:8484 204.13.108.176"

alias composer="php /usr/local/bin/composer.phar"

export PATH=/usr/local/bin:/usr/bin:/bin:/opt/local/bin:/opt/local/sbin:~/Library/Android/sdk/tools:$PATH
export PATH=/Applications/MAMP/bin/php/php5.6.10/bin:$PATH
export ANDROID_HOME=/Users/kyle/Library/Android/sdk
export JAVA_HOME=$(/usr/libexec/java_home)

# Load NVM
export NVM_DIR=/Users/kyle/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source $HOME/.rvm/scripts/rvm

echo "node $(node --version)"
echo "npm $(npm --version)"
echo "$(ruby -v)"
echo "$(git --version)"
echo "$(python --version)"
