if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim="nvim"
set -gx EDITOR nvim


# Base Environment Variables (Session-scoped)

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

# nvchad alias
alias nvchad="NVIM_APPNAME=nvchad nvim"

# pnpm
switch (uname)
    case Linux
        set -gx PNPM_HOME "$HOME/.local/share/pnpm"
    case Darwin
        set -gx PNPM_HOME "$HOME/Library/pnpm"
end
if not string match -q -- "$PNPM_HOME" $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
