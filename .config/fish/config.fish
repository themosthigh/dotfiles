if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim="nvim"
set -gx EDITOR nvim


switch uname
    case Darwin
        # Local bins
        set -U fish_user_paths /opt/local/bin $fish_user_paths
end

# Homebrew
set -U fish_user_paths /opt/homebrew/bin $fish_user_paths

# Nix darwin
set -U fish_user_paths /run/current-system/sw/bin $fish_user_paths

# Go bin 
set -U fish_user_paths $HOME/go/bin $fish_user_paths

# Lando bin 
set -U fish_user_paths $HOME/.lando/bin $fish_user_paths

# Laravel composer
set -U fish_user_paths $HOME/.composer/vendor/bin $fish_user_paths

# Fly.io
set -U fish_user_paths $HOME/.fly/bin $fish_user_paths

# Sdk manager
set -U fish_user_paths $HOME/.sdkman/bin $fish_user_paths

# Java Home
set -Ux JAVA_HOME ~/.sdkman/candidates/java/current/bin

switch (uname)
    case Linux
        # Android Home
        set -Ux ANDROID_HOME /gamma/Android/Sdk
    case Darwin
        set -Ux ANDROID_HOME $HOME/Library/Android/Sdk
        # set -U fish_user_paths /opt/homebrew/opt/libiconv/bin $fish_user_paths
        # set -gx LDFLAGS "-L/opt/homebrew/opt/libiconv/lib"
        # set -gx CPPFLAGS "-I/opt/homebrew/opt/libiconv/include"
end

# important paths
set -U fish_user_paths $ANDROID_HOME/emulator $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/platform-tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools-bin $fish_user_paths


# dart
set -U fish_user_paths $HOME/.pub-cache/bin $fish_user_paths

# flutter
set -U fish_user_paths /gamma/Linux/flutter/bin $fish_user_paths
set -U fish_user_paths $HOME/fvm/default/bin $fish_user_paths

# local bins
set -U fish_user_paths $HOME/.local/bin $fish_user_paths

# add starfish prompt
starship init fish | source

# nvchad alias
alias nvchad="NVIM_APPNAME=nvchad nvim"

# nix sudo
alias sudo="/run/wrappers/bin/sudo"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# cargo
set --export PATH $HOME/.cargo/bin $PATH

export PATH="/Users/marvin/.lando/bin:$PATH"
#landopath
