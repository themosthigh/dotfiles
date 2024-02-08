if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Go bin 
set -U fish_user_paths $HOME/go/bin/ $fish_user_paths

# Java Home
set -Ux JAVA_HOME /usr/lib/jvm/java-11-openjdk

# Android Home
set -Ux ANDROID_HOME /perm/Android/Sdk

# important paths
set -U fish_user_paths $ANDROID_HOME/emulator $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/platform-tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools-bin $fish_user_paths

# add starfish prompt
starship init fish | source

# nvchad alias
alias nvchad="NVIM_APPNAME=nvchad nvim"
