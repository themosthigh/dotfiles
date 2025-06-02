{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.neofetch

    pkgs.mkalias # TODO: add aliases for macos

    pkgs.nerd-fonts.monaspace
    pkgs.nerd-fonts.fira-code
    pkgs.monaspace
    pkgs.cascadia-code

    pkgs.starship
    pkgs.stow
    pkgs.fzf
  ];
}

