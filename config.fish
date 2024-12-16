set -gx EDITOR vi
starship init fish | source

source /opt/homebrew/opt/modules/init/fish
source /opt/homebrew/opt/modules/init/fish_completion
set -gx MODULEPATH $MODULEPATH:$HOME/.module
