# Path to Oh My Fish install
set -gx OMF_PATH ~/.local/share/omf

# Customize Oh My Fish configuration path
# set -gx OMG_CONFIG ~/.config/omf

# Load oh-my-fish configuration
# source $OMF_PATH/init.fish

# direnv
eval (direnv hook fish)

# my dotfiles
set -gx DF_BASE_PATH ~/.dotfiles
source $DF_BASE_PATH/my.fish
