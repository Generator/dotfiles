#------------------------------
# Aliases
#------------------------------
alias ls="ls --color --group-directories-first -h"
#alias grep='grep --colour=auto'
alias webshare='python2 -m SimpleHTTPServer 8080'
#alias qemuctl='qemuctl -enable-kvm'
alias vi='vim'
#alias urxvt="urxvt -geometry 94x30"
alias zsh-reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

# privileged access
alias sudo='sudo -E'
alias update-mkinitcpio="sudo mkinitcpio -p linux"
alias pacman-autoremove="sudo pacman -Sc && sudo pacman -Qdtq | sudo pacman -Rs -"

# SSH
alias meatspin="ssh -t aj@5.175.165.218 -p 7272 screen -dR"
alias lemonparty="ssh -t aj@5.175.169.216 -p 7272 screen -dR"
alias dd-wrt='ssh root@10.0.0.1'
alias minicom='minicom -c on'
alias vboxserial='minicom -D unix\#/tmp/vboxS0'

# Unlias oh-my-zsh
#unalias rm
#unalias cp

# START TMUX
#====================
[[ $- != *i* ]] && return
[[ $TERM != screen* ]] && alias tmux="tmux -2"
