function node_prompt_version {
    if which node &> /dev/null; then
        echo "%{$fg_bold[blue]%}  (%{$fg[red]%}$(node -v)%{$fg[blue]%}) %{$reset_color%}"
    fi
}

local logo="%{$fg_bold[white]%}▲$resetColor$resetColor"
local ret_status="%(?:%{$fg_bold[green]%}λ :%{$fg_bold[red]%}λ )"
PROMPT='${logo} %{$fg[cyan]%}%c%{$reset_color%} $(node_prompt_version)$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"





