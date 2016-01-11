#------------------------------
# TERM Settings
#------------------------------
#[ -n "$TMUX" ] && export TERM=screen-256color
[ -n "$SCREEN" ] && export TERM=screen-256color

case $TERM in
    xterm*|rxvt*|screen*)
         precmd() { print -Pn "\e]0;%m:%~\a" }
         preexec () { print -Pn "\e]0;$1\a" }
        ;;
esac
