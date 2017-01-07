# Path to Oh My Fish install
# set -gx OMF_PATH ~/.local/share/omf

# Customize Oh My Fish configuration path
# set -gx OMG_CONFIG ~/.config/omf

# Load oh-my-fish configuration
# source $OMF_PATH/init.fish

# direnv
eval (direnv hook fish)

# paths
set -gx DF_BASE_PATH ~/.dotfiles
set -gx DF_FISH_CONFIG_PATH ~/.dotfiles/configs/fish

# docker
alias docker-clean='sh $DF_BASE_PATH/bin/docker-clean.sh'

# git
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff --no-color | $EDITOR'
alias ga='git add'
alias gcl='git config --list'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gbc='git branch --color'
alias gba='git branch -a'
alias gco='git checkout'
alias gpatch='git diff master -p'
