#------------------------------
# key binds
#------------------------------
bindkey "^J" self-insert
bindkey "\e[3~" delete-char
bindkey '^[[1;3C' forward-word
bindkey '^[[1;3D' backward-word
bindkey '^[^?' backward-kill-word
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '\e[H' beginning-of-line
bindkey '\e[F' end-of-line
bindkey '\e[7~' beginning-of-line
bindkey '\e[8~' end-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey ' ' magic-space
bindkey '^[[Z' reverse-menu-complete
bindkey '^I' expand-or-complete # reset fzf-completion
bindkey -s '^L' "|$PAGER"
bindkey '^Q' quote-line
bindkey -s '^N' '> /dev/null 2>&1\n'
# bind only if fzf installed
#if [[ -x "$(command -v fzf)" ]]; then
#   bindkey '^R' fzf-history-widget
#else
#   echo "fzf not found"
#   bindkey '^R' history-incremental-search-backward
#fi
