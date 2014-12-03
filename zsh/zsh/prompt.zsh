# Reset prompt
prompt off 

# Change xterm to xterm-256color
case $TERM in
		xterm)
		export TERM=xterm-256color
		;;
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
# Lightline
#------------------------------

lightline () {

		# Create new line
		prompt_newline=$'\n%{\r%}'	

		# load some modules
		autoload -U colors zsh/terminfo # Used in the colour alias below
		colors
		setopt prompt_subst

		if [[ $UID != 0 ]]; then NCOLOR=$'%{\e[1;36m%}'; else NCOLOR=$'%{\e[0;31m%}%B'; fi

		PROMPT='%{%K{238}%}%{$fg[white]%}%~ %k%{%F{238}%}%f%{$reset_color%}
%{%K{032}%}%{$fg[white]%}%n %k%{%F{032}%}%f'
		#RPROMPT='%{%F{237}%}%{%K{237}%}%{$fg[white]%}%n@%M%k%{$reset_color%}'
}
#------------------------------
# Powerline
#------------------------------
powerline_(){
		. /usr/share/zsh/site-contrib/powerline.zsh
}

#------------------------------
# Oh-My-ZSH
#------------------------------
oh_my_zsh(){
        
        # Auto Update
        DISABLE_AUTO_UPDATE="false"
		# Path to your oh-my-zsh configuration.
		ZSH=$HOME/.zsh/oh-my-zsh

		# Set name of the theme to load.
		ZSH_THEME="agnoster-nl"

		# agnoster theme settings
		DEFAULT_USER=""

		# Which plugins would you like to load?
		plugins=(extract git systemd tmux)

		# Source file
		. $HOME/.zsh/oh-my-zsh/oh-my-zsh.sh
}

# Dont set grafical prompt in linux console
case $TERM in
		xterm*|rxvt*|screen*)
				oh_my_zsh
				#powerline_
				#lightline
				#setprompt
				;;
		linux)
				setprompt
				;;
esac