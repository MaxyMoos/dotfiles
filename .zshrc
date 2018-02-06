# Run .profile
if [[ -e $HOME/.profile ]]; then source $HOME/.profile; fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# 
# Original theme was "fx"
#ZSH_THEME="dpoggi"
ZSH_THEME="fx"
#ZSH_THEME="pure"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins+=(git virtualenvwrapper docker)

# Run oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Display MotD
if [[ -e $HOME/.motd ]]; then cat $HOME/.motd; fi

# Disable Virtualenv prompt
export VIRTUAL_ENV_DISABLE_PROMPT=0

#############
# Custom MG #
#############

# Remap PgDown key to '~' character
bindkey '^W' backward-kill-word

# Fix zsh extended glob clashing with git for char '^' (e.g. `git reset --hard HEAD^`)
setopt NO_NOMATCH

# AltGr + space is NOT a non-breaking space anymore
setxkbmap -option "nbsp:none"

# Disable Python bytecode generation on execution
export PYTHONDONTWRITEBYTECODE=1

# Enable zsh syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
