#------------------------------
# Prompt
#------------------------------
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
