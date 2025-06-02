{ ... }: {
  homebrew = {
    enable = true;
    casks = [ "vagrant" "ghostty" "slack" "figma" "firefox" ];
    onActivation.cleanup = "zap";
  };
}
