{ ... }: {
  homebrew = {
    enable = true;
    casks = [ "parallels" "vagrant" ];
    onActivation.cleanup = "zap";
  };
}
