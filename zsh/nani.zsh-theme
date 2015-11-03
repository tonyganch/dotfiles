PROMPT='


%{$fg[magenta]%}@%n %{$fg[blue]%}[%~] $(git_prompt_info) %{$reset_color%}%D{[%H:%M:%S]}
%{$fg[blue]%}-> %# %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}+%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
