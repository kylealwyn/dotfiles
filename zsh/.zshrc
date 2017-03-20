export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=13
export MANPATH="/usr/local/man:$MANPATH"
ZSH_THEME="zesty"
DISABLE_AUTO_UPDATE=false
DISABLE_UPDATE_PROMPT=false
ENABLE_CORRECTION=false
COMPLETION_WAITING_DOTS=false
MICRO_TRUECOLOR=1

plugins=(git zsh-autosuggestions)

# Source all the things
source $ZSH/oh-my-zsh.sh
source ~/dotfiles/zsh/.exports
source ~/dotfiles/zsh/.aliases
source ~/dotfiles/zsh/.functions
#.extra is ignored by git and not guaranteed to exist on the machine
[ -s ~/dotfiles/zsh/.extra ] && source ~/dotfiles/zsh/.extra

# Load Z
if command -v brew >/dev/null 2>&1; then
    # Load rupa's z if installed
    [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

# Load NVM & AVN
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh"

# Load rbenv
eval "$(rbenv init -)"


versions
quote

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
