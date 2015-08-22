if [ "$BASH_VERSION" ] && [ -n "$PS1" ] && echo $SHELLOPTS | grep -v posix >>/dev/null; then
    if [ -f $HOME/.zsh/functions/Completion/systemd/systemd-shell-wrapper.bash ]; then
        source $HOME/.zsh/functions/Completion/systemd/systemd-shell-wrapper.bash
    fi
#elif [ "$ZSH_VERSION" ] && [ -n "$PS1" ]; then
#    if [ -f /etc/profile.d/ ]; then
#        source /etc/profile.d/
#    fi
fi
