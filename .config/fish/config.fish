if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim="nvim"
set -gx EDITOR nvim


if uname = Darwin
# Local bins
    set -U fish_user_paths /opt/local/bin/ $fish_user_paths
end

# Homebrew
    set -U fish_user_paths /opt/homebrew/bin/ $fish_user_paths

# Go bin 
set -U fish_user_paths $HOME/go/bin/ $fish_user_paths

# Lando bin 
set -U fish_user_paths $HOME/.lando/bin/ $fish_user_paths

# Laravel composer
set -U fish_user_paths $HOME/.composer/vendor/bin/ $fish_user_paths

# Fly.io
set -U fish_user_paths $HOME/.fly/bin/ $fish_user_paths

# Java Home
set -Ux JAVA_HOME ~/.sdkman/candidates/java/current/bin/

switch (uname)
  case Linux
# Android Home
    set -Ux ANDROID_HOME /gamma/Android/Sdk
  case Darwin
    set -Ux ANDROID_HOME $HOME/Library/Android/Sdk
end

# important paths
set -U fish_user_paths $ANDROID_HOME/emulator $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/platform-tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools-bin $fish_user_paths


# flutter
set -U fish_user_paths /gamma/Linux/flutter/bin $fish_user_paths

# local bins
set -U fish_user_paths $HOME/.local/bin $fish_user_paths

# add starfish prompt
starship init fish | source

# nvchad alias
alias nvchad="NVIM_APPNAME=nvchad nvim"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

export PATH="/Users/marvin/.lando/bin:$PATH"; #landopath

