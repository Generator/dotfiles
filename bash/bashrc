# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

#source ~/bin/custom_prompt.sh

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# ArchLinux logo
#echo -e '\e[1;37mArch\e[0;36mLinux\e[0m\n'
#function archlogo() {
#local arch="Arch" nix="Linux"             # The Logo
#local date="$(date '+%H:%m:%S %d/%m/%Y')" # Date
#local spc="$(( $(tput cols) - ${#arch} - ${#nix} ))"
#local normal="$(tput sgr0)"               # Normal text
#clear
#printf "\e[1;37m%s\e[0;36m%s\e[1;30m%${spc}s$normal\n" "$arch" "$nix" "$date"
#}
#archlogo

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100
HISTFILESIZE=100

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#    xterm-color) color_prompt=yes;;
#esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

# If this is an xterm set the title to user@host:dir
PS1='[\[\e[0;36m\]\u\[\e[0;37m\]][\[\e[0;33m\]\w\[\e[0;37m\]]\n\[\e[1;30m\]>\[\e[0;32m\]>\[\e[1;32m\]>\[\e[0m\] '

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ] && ! shopt -oq posix; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Editor
export EDITOR=nano
