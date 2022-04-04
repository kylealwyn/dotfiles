export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=13
export MANPATH="/usr/local/man:$MANPATH"

GEOMETRY_COLOR_DIR="cyan"
GEOMETRY_SYMBOL_PROMPT="λ"
GEOMETRY_SYMBOL_EXIT_VALUE="λ"

PURE_PROMPT_SYMBOL='%F{white}λ%f'

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

 #Load Node Version Manager
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Load Ruby Version Manager
eval "$(rbenv init -)"

# Load pure prompt
autoload -U promptinit; promptinit
zstyle :prompt:pure:path color blue
prompt pure
