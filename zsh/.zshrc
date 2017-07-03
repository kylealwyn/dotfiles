export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=13
export MANPATH="/usr/local/man:$MANPATH"
GEOMETRY_SYMBOL_PROMPT="❯"                  # default prompt symbol
GEOMETRY_SYMBOL_PROMPT3="◇"                 # multiline prompts
GEOMETRY_SYMBOL_EXIT_VALUE="❯"              # displayed when exit value is != 1
GEOMETRY_SYMBOL_ROOT="❯"                    # when logged in user is root
GEOMETRY_COLOR_EXIT_VALUE="red"
GEOMETRY_COLOR_DIR="cyan"
ZSH_THEME="geometry/geometry"
DISABLE_AUTO_UPDATE=false
DISABLE_UPDATE_PROMPT=false
ENABLE_CORRECTION=false
COMPLETION_WAITING_DOTS=false

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Source all the things
source $ZSH/oh-my-zsh.sh
source ~/dotfiles/zsh/.exports
source ~/dotfiles/zsh/.aliases
source ~/dotfiles/zsh/.functions
# .extra is ignored by git and not guaranteed to exist on the machine
[ -s ~/dotfiles/zsh/.extra ] && source ~/dotfiles/zsh/.extra

# Load Z
if command -v brew >/dev/null 2>&1; then
    # Load rupa's z if installed
    [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

# Load FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

 #Load nodenv
eval "$(nodenv init -)"

# Load rbenv
eval "$(rbenv init -)"

versions
quote

