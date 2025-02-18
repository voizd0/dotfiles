clear
# enable tab completion
autoload -Uz compinit
compinit
_comp_options+=(globdots)
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} '=*=16' 'ma=30;48;5;11'

# enable command line editing in vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# enable menu select
zstyle ':completion:*' menu select
zmodload zsh/complist
# bind vi keys in menu tab completion
bindkey -M menuselect '^O' vi-backward-char
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

bindkey -v

# bind emacs' ^A and ^E in insert mode
bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^E' end-of-line

bindkey '^R' history-incremental-search-backward

export PS1=""

alias bc="bc -q"
alias csi="chicken-csi -q"
alias csc="chicken-csc"
alias yt="yt-dlp"
alias wiki="wikicurses"

alias vmnl="vim 'h user-manual|only'"

# functions
alias en=en
alias vm=vm

# pdf
alias pdfsicp="zathura ~/cs/sicp/pdf/sicp.pdf &"
alias pdfc="zathura ~/languages/c/resources/C\ Programming\ Language\ -\ 2nd\ Edition\ \(OCR\).pdf &"

alias x="startx"
alias p="poweroff"
alias sp="systemctl suspend"

if [[ $TERM = linux ]]; then
    echo -e "\033[?112c"
    PROMPT_COMMAND='echo -ne "\e[?112c"'
fi
