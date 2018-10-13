export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=13
export MANPATH="/usr/local/man:$MANPATH"
GEOMETRY_COLOR_DIR="cyan"
GEOMETRY_SYMBOL_PROMPT="λ"
GEOMETRY_SYMBOL_EXIT_VALUE="λ"
PURE_PROMPT_SYMBOL='%F{white}❯%f'
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
#eval "$(nodenv init -)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load rbenv
eval "$(rbenv init -)"

quote

#autoload -U promptinit; promptinit

#prompt pure

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/kyle/dev/work/api/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/kyle/dev/work/api/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/kyle/dev/work/api/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/kyle/dev/work/api/node_modules/tabtab/.completions/sls.zsh
