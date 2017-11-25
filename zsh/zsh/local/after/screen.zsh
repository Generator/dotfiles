#------------------------------
# TERM Settings
#------------------------------
#[ -n "$TMUX" ] && export TERM=screen-256color
[ -n "$SCREEN" ] && export TERM=screen-256color

case $TERM in
    xterm*|rxvt*|screen*)
         precmd() { print -Pn "\e]0;%n:%4(c:...:)%3c\a" }
         preexec () { print -Pn "\e]0;$(echo "$1" | cut -d" " -f1)\a" }
        ;;
esac
