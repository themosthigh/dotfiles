{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # general tools 
    git
    gh
    lazygit
    delta
    ripgrep
    yazi
    
    android-tools
    # docker

    # editors
    helix
    neovim

    zellij

    gnumake

    # nix
    nil
    nixfmt-classic
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
    nodePackages.yarn
    nodePackages.typescript-language-server
    nodePackages.svelte-language-server
    nodePackages.prettier
    prettierd
    emmet-ls
    eslint_d
    vtsls
    tailwindcss-language-server
    vscode-langservers-extracted
    uwu-colors
    
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

    # postgres compilation
    # postgresql
    # openssl
  ];
}
