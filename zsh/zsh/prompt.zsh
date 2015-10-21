# Reset prompt
if [[ "$OSTYPE" == "linux"* ]]; then
prompt off
fi

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

#------------------------------
# Prompt
#------------------------------
setprompt () {

		# Create new line
		prompt_newline=$'\n%{\r%}'	

		# load some modules
		autoload -U colors zsh/terminfo # Used in the colour alias below
		colors
		setopt prompt_subst

		##
		if [[ $UID != 0 ]]; then
		UIDC=$'%{\e[1;36m%}'
		else
		UIDC=$'%{\e[0;31m%}%B'
		fi

		# set the prompt
		PROMPT='[${Blue}%~%{$reset_color%}]%{$reset_color%}
%B${UIDC}%#%{$fg[black]%}>%b%{$reset_color%}'
		RPROMPT='${BBlack}%B%n@%M%b%{$reset_color%}'
}

# Prompt
#PROMPT='[%{$fg[blue]%}%n%{$reset_color%}][%{$fg[yellow]%}%~%{$reset_color%}]${vcs_info_msg_0_}
#%B%{$fg[black]%}>%b%{$fg[green]%}>%B%{$fg[green]%}>%b%{$reset_color%}'

#------------------------------
# zgen
#------------------------------
zgen_start(){
# load zgen
source ~/.zsh/framework/zgen/zgen.zsh

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/extract
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/fasd
    zgen oh-my-zsh plugins/history-substring-search
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load unixorn/autoupdate-zgen
    zgen load tarruda/zsh-autosuggestions
    zgen load Tarrasch/zsh-bd
    zgen load caarlos0/zsh-git-sync
    zgen load chrissicool/zsh-bash
    zgen load rimraf/k

    # bulk load
    zgen loadall <<EOPLUGINS
EOPLUGINS
    # ^ can't indent this EOPLUGINS

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    #zgen oh-my-zsh themes/arrow
    zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train

    # save all to init script
    zgen save
fi
}

# Options bullet-train-oh-my-zsh-theme
BULLETTRAIN_TIME_SHOW=false

#------------------------------
# Select prompt
#------------------------------
case $TERM in
		xterm*|rxvt*|screen*|tmux*)
        zgen_start
				#setprompt
				;;
		linux)
				setprompt
				;;
esac
