if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Editors & Aliases
alias vim="nvim"
alias nvchad="NVIM_APPNAME=nvchad nvim"
set -gx EDITOR nvim

alias hex="helix"

# Base Environment Variables (Session-scoped)

switch (uname)
    case Linux
        set -gx ANDROID_HOME /work/Android/Sdk
        set -gx JAVA_HOME /usr/lib/jvm/default
    case Darwin
        set -gx ANDROID_HOME $HOME/Library/Android/Sdk
        # OS X Specific Paths
        fish_add_path /opt/local/bin
end

# Session-based Path Additions
fish_add_path /opt/homebrew/bin
fish_add_path /run/current-system/sw/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/.lando/bin
fish_add_path $HOME/.composer/vendor/bin
fish_add_path $HOME/.fly/bin
fish_add_path $HOME/.sdkman/bin

# Android Paths
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path $ANDROID_HOME/cmdline-tools
fish_add_path $ANDROID_HOME/build-tools

# Language Toolchains
fish_add_path $HOME/.pub-cache/bin
fish_add_path /gamma/Linux/flutter/bin
fish_add_path $HOME/fvm/default/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.config/herd-lite/bin

# Local binaries
fish_add_path $HOME/.cargo/bin

# Prompt
starship init fish | source


# pnpm
set -gx PNPM_HOME "/home/n00b/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end
