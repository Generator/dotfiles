#------------------------------
# Options Before
#------------------------------

# Options bullet-train-oh-my-zsh-theme
BULLETTRAIN_TIME_SHOW=false
BULLETTRAIN_HG_SHOW=false

# Disable oh-my-zsh autoupdate
DISABLE_AUTO_UPDATE=true

# zsh-syntax-highlighting
if [[ "$OSTYPE" != "cygwin"* ]]; then
   ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)
else
   ZSH_HIGHLIGHT_HIGHLIGHTERS=()
fi


# zsh-completion-generator
GENCOMPL_PY=python2
GENCOMPL_FPATH=$HOME/.zsh/complete

# enable agent forwarding
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent quiet yes
zstyle :omz:plugins:ssh-agent identities id_rsa id_rsa_aur

#------------------------------
# zplug
#------------------------------
source ~/.zplug/zplug

    # Local plugins
    zplug "~/.zsh/local", from:local, nice:-20, of:"*.zsh"

    # oh-my-zsh plugins
    zplug "plugins/command-not-found", from:oh-my-zsh
    zplug "plugins/extract", from:oh-my-zsh
    zplug "plugins/fasd", from:oh-my-zsh
    zplug "plugins/fancy-ctrl-z", from:oh-my-zsh
    zplug "plugins/git", from:oh-my-zsh

    # github plugins
    zplug "b4b4r07/enhancd", of:enhancd.sh
    zplug "atweiden/fzf-extras", of:fzf-extras.sh
    zplug "Tarrasch/zsh-bd"
    zplug "rimraf/k"
    zplug "RobSis/zsh-completion-generator"
    zplug "zsh-users/zsh-completions"
    zplug "zsh-users/zsh-syntax-highlighting", nice:10
    zplug "zsh-users/zsh-history-substring-search", nice:11
    zplug "tarruda/zsh-autosuggestions", nice:12

    # Theme
    zplug "caiogondim/bullet-train-oh-my-zsh-theme", if:"[[ $TERM != linux ]]"
    zplug "~/.zsh/local/theme", from:local, nice:-19, of:"simple-prompt.zsh-theme", if:"[[ $TERM == linux ]]"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose ; then
   zplug install --verbose
fi

# Then, source plugins and add commands to $PATH
zplug load

#------------------------------
# Options After
#------------------------------

#------------------------------
# Enable autosuggestions automatically
#------------------------------
zle-line-init() {
	 zle autosuggest-start
	}
zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle
# Accept suggestions without leaving insert mode
bindkey '^f' vi-forward-word
# or
# bindkey '^f' vi-forward-blank-word
AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1
