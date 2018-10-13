local ret_status="%{$fg_bold[white]%}⇢ "
PROMPT='
$fg[blue]%4c $(git_prompt_info)
${ret_status} %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}%{$reset_color%}"
