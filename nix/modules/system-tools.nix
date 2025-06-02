{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.neofetch

    pkgs.mkalias # TODO: add aliases for macos

    pkgs.starship
    pkgs.stow
    pkgs.fzf
    pkgs.dwt1-shell-color-scripts
  ];
}

