{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.coreutils
    pkgs.neofetch

    pkgs.mkalias # TODO: add aliases for macos

    pkgs.starship
    pkgs.stow
    pkgs.fzf

    # Aesthetics
    pkgs.chafa
    pkgs.dwt1-shell-color-scripts
    pkgs.pokeget-rs
  ];
}

