export ZSH="/Users/sokmesakhiev/.oh-my-zsh"
export TERM="xterm-256color"
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(
  git
)

export EDITOR=nvim

source $ZSH/oh-my-zsh.sh
eval "$(rbenv init -)"

#########################
# Plugin Customizatins
#########################
POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

NVIM_PATH='/usr/local/bin/nvim'
alias vim=$NVIM_PATH
alias vi=$NVIM_PATH
alias zshrc='nvim ~/.zshrc' # Quick access to the ~/.zshrc file
alias vimrc='nvim ~/.vimrc'
alias new_tmux='sudo rm -f /tmp/tbs && tmux -S /tmp/tbs new -s bongloy'
alias ss="spring stop"
