{ ... }: {
  homebrew = {
    enable = true;
    casks = [
      # "vagrant"
      "ghostty"
      # "slack"
      "figma"
      "firefox"
      "font-monaspace"
      "font-cascadia-code"
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
