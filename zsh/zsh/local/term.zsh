# Change xterm to xterm-256color
case $TERM in
		xterm)
		export TERM=xterm-256color
		;;
esac

# URxvt I-Beam cursor
case $TERM in 
    rxvt-unicode*)
    echo -e -n "\x1b[\x35 q"
esac

