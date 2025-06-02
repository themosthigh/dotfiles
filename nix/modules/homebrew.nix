{ ... }: {
  homebrew = {
    enable = true;
    casks = [
      "vagrant"
      "ghostty"
      "slack"
      "figma"
      "firefox"
      "font-monaspace-nerd-font"
    ];
    onActivation.cleanup = "zap";
  };
}
