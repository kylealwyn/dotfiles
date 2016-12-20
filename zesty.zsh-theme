local ret_status="%(?:%{$fg_bold[black]%}→:%{$fg_bold[red]%}→)"
PROMPT='
$fg_bold[blue]%4c $(git_prompt_info)
${ret_status} %{$reset_color%}%{$fg_bold[black]%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
