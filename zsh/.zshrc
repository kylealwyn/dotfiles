export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=13
export MANPATH="/usr/local/man:$MANPATH"
ZSH_THEME="zesty"
ZSH_DISABLE_COMPFIX=true
DISABLE_AUTO_UPDATE=false
DISABLE_UPDATE_PROMPT=false
ENABLE_CORRECTION=true
COMPLETION_WAITING_DOTS=false
rm ~/.zcompdump*

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Load Aliases & Functions
source ~/dotfiles/zsh/.aliases
source ~/dotfiles/zsh/.functions

export ANDROID_HOME=/usr/local/opt/android-sdk
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:$HOME/dotfiles/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Load RVM
export PATH="$HOME/.rvm/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

echo "node $(node --version)"
echo "npm $(npm --version)"
echo "$(ruby -v)"
echo "$(git --version)"
echo "$(python --version)"
