# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh
# # if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL9K_MODE='awesome-fontconfig'
export ZSH_THEME="spaceship"

#### Powerlevel9k theme start ####
# # if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL9K_MODE='awesome-fontconfig'
# export ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# # https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
# # https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
# POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
# POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
# POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
# POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
# POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
# POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white} "
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon ssh root_indicator dir vcs status time)
# # POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context os_icon ssh root_indicator dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time)

# # POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs status)
# # POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
# # colorcode test
# # for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
# POWERLEVEL9K_NVM_FOREGROUND='000'
# POWERLEVEL9K_NVM_BACKGROUND='072'
# POWERLEVEL9K_SHOW_CHANGESET=true
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_left"
# # POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir nvm vcs)
# # POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
# # # colorcode test
# # # for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
# # POWERLEVEL9K_NVM_FOREGROUND='000'
# # POWERLEVEL9K_NVM_BACKGROUND='072'
# # POWERLEVEL9K_SHOW_CHANGESET=true
# # #export ZSH_THEME="random"
#### Powerlevel9k theme end ####

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autojump chucknorris colorize compleat dirpersist docker docker-compose docker-machine git history cp git-extras gem bundler osx ruby rvm rails sudo history-substring-search last-working-dir vagrant zsh-completions zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting zsh-syntax-highlighting-filetypes)
# plugins=(autojump colorize compleat dirpersist docker docker-compose git gulp history cp git-extras gem bundler osx ruby rvm rails sudo history-substring-search last-working-dir vagrant zsh-completions zsh-history-substring-search zsh-autosuggestions zsh-syntax-highlighting zsh-syntax-highlighting-filetypes warhol)
# plugins=(colorize autojump git history cp git-extras zsh-autosuggestions zsh-syntax-highlighting zsh-syntax-highlighting-filetypes)

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source /usr/local/opt/nvm/nvm.sh

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use &> /dev/null
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    nvm use default &> /dev/null
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Customize to your needs...
unsetopt correct

# integrate rbenv
eval "$(rbenv init -)"

# run fortune on new terminal :)
# fortune
# fortune | cowsay -f tux | lolcat

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
