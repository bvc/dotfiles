#!/usr/bin/env zsh

# Default editor
export EDITOR="vim"

# Work log path
export WORK_LOG="/Users/brian/work-log/"

# Added by Toolbox App
export PATH="$PATH:/Users/brian/Library/Application Support/JetBrains/Toolbox/scripts"

# Added for Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# uv (Python package manager)
source $HOME/.local/bin/env

# Added for nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# SdkMan
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
