if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Go bin 
set -U fish_user_paths $HOME/go/bin/ $fish_user_paths

# Java Home
set -Ux JAVA_HOME ~/.sdkman/candidates/java/17.0.10-ms/

# Android Home
set -Ux ANDROID_HOME /perm/Android/Sdk

# important paths
set -U fish_user_paths $ANDROID_HOME/emulator $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/platform-tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools-bin $fish_user_paths


# flutter
set -U fish_user_paths /perm/flutter/bin $fish_user_paths

# local bins
set -U fish_user_paths $HOME/.local/bin $fish_user_paths

# add starfish prompt
starship init fish | source

# nvchad alias
alias nvchad="NVIM_APPNAME=nvchad nvim"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
