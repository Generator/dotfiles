# KeePass2 with KeeAgent plugin
#export SSH_AUTH_SOCK=$HOME/.ssh/ssh_auth_sock

# GNOME Keyring
#eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
#export SSH_AUTH_SOCK

# Tmux SSH Agent
if [ -z "$DESKTOP_SESSION" ]; then
eval $(tmux show-env -s |grep '^SSH_')
fi
