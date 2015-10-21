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
#export TERM=xterm-256color
#~ case $TERM in
    #~ xterm*|rxvt*)
        #~ PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}\007"'
        #~ export PROMPT_COMMAND
        #~ ;;
    #~ screen)
      #~ TITLE=$(hostname -s)                                                      
      #~ PROMPT_COMMAND='/bin/echo -ne "\033k${TITLE}\033\\"'                      
      #~ export PROMPT_COMMAND
        #~ ;;
#~ esac
