{ pkgs, ... }:
{
  environment.systemPackages =  with pkgs; [
  # general tools 
  git
  gh
  lazygit
  ripgrep
  android-tools

  # editors
  helix
  neovim

  gnumake
    
  # nix
  nil

  # lua
  lua-language-server
  stylua

  # c/cpp
  gcc
  
  # go
  go
  gopls
  golines
  gofumpt
  goimports-reviser
  gomodifytags

  # js/ts
  nodejs_20
  nodePackages.pnpm
  nodePackages.typescript-language-server
  nodePackages.svelte-language-server
  # nodePackages_latest.vue-language-server
  nodePackages.prettier
  prettierd
  emmet-ls
  eslint_d

  # rust
  rustup
  rust-analyzer

  # toml
  taplo

  # dart/flutter
  dart
  # flutter
  fvm

  # java
  jdk11	

  # zig
  zig
  ];
}
