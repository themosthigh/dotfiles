{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.coreutils
    pkgs.hyfetch
    # pkgs.vagrant

    pkgs.mkalias # TODO: add aliases for macos

    pkgs.starship
    pkgs.stow
    pkgs.fzf
    pkgs.btop
    pkgs.bat

    # Aesthetics
    pkgs.chafa
    pkgs.dwt1-shell-color-scripts
    pkgs.pokeget-rs
  ];
}

