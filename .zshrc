# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh
export EDITOR="atom -w"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# Set name of the theme to load.
# Look in $ZSH/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="ys"
#export ZSH_THEME="random"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
<<<<<<< HEAD
plugins=(git brew github osx rvm compleat dirpersist gem git-flow ssh-agent cloudapp colorize osx)

source $ZSH/oh-my-zsh.sh

# source ~/.nvm/nvm.sh
=======
plugins=(brew colorize compleat dirpersist gem git git-flow osx node npm nvm rvm ssh-agent)

source $ZSH/oh-my-zsh.sh

export NVM_DIR=~/.nvm
source /usr/local/opt/nvm/nvm.sh
>>>>>>> upstream/master

# Customize to your needs...
unsetopt correct

<<<<<<< HEAD
# export PATH="/Users/antic/.rbenv/shims:${PATH}"
# source "/usr/local/Cellar/rbenv/0.4.0/libexec/../completions/rbenv.zsh"
# rbenv rehash 2>/dev/null
# rbenv() {
#   typeset command
#   command="$1"
#   if [ "$#" -gt 0 ]; then
#     shift
#   fi
#
#   case "$command" in
#   rehash|shell)
#     eval `rbenv "sh-$command" "$@"`;;
#   *)
#     command rbenv "$command" "$@";;
#   esac
# }

=======
nvm use stable
>>>>>>> upstream/master
# run fortune on new terminal :)
# fortune | cowsay | lolcat
fortune | cowsay

autoload -U zmv
# you don't need the following two now, but put them also in your .zshrc
alias zcp='zmv -C'
alias zln='zmv -L'
