# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -h --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Python Simple HTTP Server
alias webshare='python -m SimpleHTTPServer 8080'

# qemuctrl with kvm
alias qemuctl='qemuctl -enable-kvm'

# pacman-color
alias pacman='pacman-color'

# privileged access
alias sudo='sudo '
alias update-mkinitcpio="sudo mkinitcpio -p linux"
alias pacman-autoremove="sudo pacman -Sc && sudo pacman -Qdtq | sudo pacman -Rs -"

# git cola

alias git-cola="LIBOVERLAY_SCROLLBAR=0 git-cola"
