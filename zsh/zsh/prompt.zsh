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
        DISABLE_AUTO_UPDATE="true"
		# Path to your oh-my-zsh configuration.
		#ZSH=$HOME/.zsh/framework/oh-my-zsh

		# Set name of the theme to load.
		#ZSH_THEME="agnoster-nl"

		# agnoster theme settings
		DEFAULT_USER=""

		# Which plugins would you like to load?
		plugins=(extract git systemd tmux alias-tips)

		# Source file
		#. $HOME/.zsh/framework/oh-my-zsh/oh-my-zsh.sh
}

#------------------------------
# Antigen
#------------------------------
antigen_start(){
	
	# Source file
	source ~/.zsh/framework/antigen/antigen.zsh
	
	# Load the oh-my-zsh's library.
	antigen use oh-my-zsh
	#antigen use prezto
	
	# Bundles from the default repo (robbyrussell's oh-my-zsh).
	antigen bundle git
	#antigen bundle heroku
	#antigen bundle pip
	#antigen bundle lein
	antigen bundle command-not-found
	
	# Bundles
	antigen bundle unixorn/autoupdate-antigen.zshplugin
	antigen bundle zsh-users/zsh-syntax-highlighting
	antigen bundle zsh-users/zsh-completions src
	antigen bundle tarruda/zsh-autosuggestions
	antigen bundle zsh-users/zsh-history-substring-search
	antigen bundle chrissicool/zsh-256color
	
	# Load the theme.
	#antigen theme robbyrussell
	antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
	
	# Tell antigen that you're done.
	antigen apply
	
	# Options bullet-train-oh-my-zsh-theme
	BULLETTRAIN_TIME_SHOW=false
}

# Dont set grafical prompt in linux console
case $TERM in
		xterm*|rxvt*|screen*)
				oh_my_zsh
				antigen_start
				#powerline_
				#lightline
				#setprompt
				;;
		linux)
				setprompt
				;;
esac
