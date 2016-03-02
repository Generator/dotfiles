#------------------------------
# Aliases
#------------------------------
alias ...="fdr"
alias ls="ls --color --group-directories-first -h"
alias dd="dd status=progress"
# Lists the ten most used commands.
alias history-stat="history . | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
alias webshare='python2 -m SimpleHTTPServer 8080'
#alias qemuctl='qemuctl -enable-kvm'
if [ -f /usr/bin/nvim ]; then
  alias vim='nvim'
  alias vimdiff='nvim -d'
fi
alias vi='vim'
alias vim='vim -p'
alias zsh-reload="exec zsh && echo 'ZSH config reloaded from ~/.zshrc'"

# privileged access
alias sudo='sudo -E'
alias update-mkinitcpio="sudo mkinitcpio -p linux"
alias pacman-autoremove="sudo pacman -Sc && sudo pacman -Qdtq | sudo pacman -Rs -"

# SSH
alias dd-wrt='ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 root@10.0.0.1'
alias minicom='minicom -c on'
alias vboxserial='minicom -D unix\#/tmp/vboxS0'

# START TMUX
#====================
[[ $- != *i* ]] && return
[[ $TERM != screen* ]] && alias tmux="tmux -2"
