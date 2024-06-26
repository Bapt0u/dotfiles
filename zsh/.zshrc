# +------------+
# | ZSH Config |
# +------------+

autoload -Uz compinit && compinit

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 13

plugins=(git)

source $ZSH/oh-my-zsh.sh


# +-----------------------------+
# | Environment variable Config |
# +-----------------------------+

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/opt/nvim/bin:$HOME/.local/kitty.app/bin
export PATH=$PATH:~/.binenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
export GPG_TTY=$(tty)
# Set default editor
export VISUAL=vim
export EDITOR="$VISUAL"
export KUBECONFIG=$HOME/.kube/config


# +-------------+
# | User Config |
# +-------------+

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# pyenv setup
[[ $+command[pyenv] ]] && eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"


# +----------------------+
# | User tool completion |
# +----------------------+

[[ -d minikube ]] && source <(minikube completion zsh)
[[ -d vault ]] && complete -o nospace -C /usr/local/bin/vault vault
source ~/.oh-my-zsh/completion/*
[[ -d kubectl ]] && source <(kubectl completion zsh)

# +--------------+
# | User aliases |
# +--------------+

alias setus="setxkbmap us"
alias setfr="setxkbmap fr"
# alias kubectl="minikube kubectl --"
alias k="kubectl"
alias n="nvim"
alias c="clear"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [[ $TMUX == "" ]]; then
  tmux new -s perso -c ~
fi

nerdfetch
