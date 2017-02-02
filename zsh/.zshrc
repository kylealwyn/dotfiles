export ZSH=/Users/kyle/.oh-my-zsh
ZSH_THEME="zesty"
# DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true
export UPDATE_ZSH_DAYS=13
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"
export ANDROID_HOME=/Users/kyle/Library/Android/sdk
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=/usr/local/bin:/usr/bin:/bin:/opt/local/bin:/opt/local/sbin:~/Library/Android/sdk/tools:$PATH

# Load Aliases & Functions
source ~/dotfiles/zsh/.aliases
source ~/dotfiles/zsh/.functions

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Load RVM
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#
#
# echo "node $(node --version)"
# echo "npm $(npm --version)"
# echo "$(ruby -v)"
# echo "$(git --version)"
# echo "$(python --version)"
