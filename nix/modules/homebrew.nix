{ ... }: {
  homebrew = {
    enable = true;
    casks = [
      # "vagrant"
      "ghostty"
      # "slack"
      "figma"
      "firefox"
      "font-monaspace-nerd-font"
      "obsidian"
      "spotify"
      "telegram-desktop"
      "hashicorp/tap/hashicorp-vagrant"
      "onlyoffice"
    ];
    brews = [ "libiconv" ];
    onActivation.cleanup = "zap";
  };
}
