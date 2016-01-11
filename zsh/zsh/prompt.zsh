# Reset prompt
#if [[ "$OSTYPE" == "linux"* ]]; then
#prompt off
#fi

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
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search
    zgen load unixorn/autoupdate-zgen
    zgen load tarruda/zsh-autosuggestions
    zgen load Tarrasch/zsh-bd
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

#------------------------------
# zplug
#------------------------------
zplug_start(){
source ~/.zplug/zplug

    # Local pluginszplug "~/.zsh/local", from:local
    zplug "~/.zsh/local", from:local, nice:-20, of:"*.zsh"

    zplug "plugins/git", from:oh-my-zsh
    zplug "plugins/extract", from:oh-my-zsh
    zplug "plugins/command-not-found", from:oh-my-zsh
    zplug "plugins/fasd", from:oh-my-zsh
    zplug "Tarrasch/zsh-bd"
    zplug "rimraf/k"
    zplug "zsh-users/zsh-syntax-highlighting", nice:10
    zplug "zsh-users/zsh-history-substring-search", nice:11
    zplug "tarruda/zsh-autosuggestions", nice:12

    # Theme
    zplug "caiogondim/bullet-train-oh-my-zsh-theme"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose ; then
   zplug install --verbose
fi

# Then, source plugins and add commands to $PATH
zplug load
}
zplug_start
#------------------------------
# Options
#------------------------------

# Options bullet-train-oh-my-zsh-theme
BULLETTRAIN_TIME_SHOW=false
BULLETTRAIN_HG_SHOW=false

# Disable oh-my-zsh autoupdate
DISABLE_AUTO_UPDATE=true
#------------------------------
# Select prompt
#------------------------------
#case $TERM in
#		xterm*|rxvt*|screen*|tmux*)
#        #zgen_start
#        zplug_start
#				#setprompt
#				;;
#		linux)
#				setprompt
#				;;
#esac
