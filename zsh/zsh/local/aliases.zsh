#------------------------------
# Aliases
#------------------------------
test "$(which fzf)" && alias ...="fdr"
test "$(which ranger)" && alias r="ranger"
test "$(which xdg-open)" && alias open="xdg-open"

alias cp="cp -i"
alias dd="dd status=progress"
alias mksrcinfo="makepkg --printsrcinfo > .SRCINFO"
alias grive="grive --ignore '^CCGANG/STUFF/*'"
alias bandcamp-dl='bandcamp-dl -r --template="%{artist}/%{album}/%{track}-%{artist} - %{title}"'

# Replace ls for exa
if [ -x "$(command -v exa)" ]; then 
   alias ls="exa --group-directories-first --git"
   alias ll="exa -ghl --group-directories-first --git"
   alias lla="exa -ghla --group-directories-first --git"
else 
   alias ls="ls --color --group-directories-first -h"
fi
   
# Use rsync for cp/mv
#if [[ -x "$(command -v rsync)" ]]; then
#alias rcp="rsync -aP"
#alias rmv="rsync -aP --remove-source-files"
#fi

# Lists the ten most used commands.
alias history-stat="history . | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
alias webshare='python2 -m SimpleHTTPServer 8080'
if [ -x "$(command -v nvim)" ]; then
  alias vim='nvim'
  alias vimdiff='nvim -d'
fi
alias vi='vim'
alias vim='vim -p'
alias zsh-reload="exec zsh && echo 'ZSH config reloaded from ~/.zshrc'"

# privileged access
alias sudo='sudo -E'
alias update-mkinitcpio="sudo mkinitcpio -p linux"
alias pacman-autoremove="sudo bash -c 'yes | pacman -Sc && pacman -Qdtq | pacman -Rs - && yes | pacman-optimize'"

# SSH
alias ssh='[ -n "$TMUX" ] && eval $(tmux show-env -s |grep "^SSH_"); /usr/bin/ssh'
alias wrt160n='ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 root@wrt160n.lan'
alias wnr3500l="ssh root@wnr3500l.lan -t tmux a"
alias thinkpad='ssh aj@thinkpad.lan'
alias minicom='minicom -c on'
alias vboxserial='minicom -D unix\#/tmp/vboxS0'

# START TMUX
#====================
[[ $- != *i* ]] && return
[[ $TERM != screen* ]] && alias tmux="tmux -2"
