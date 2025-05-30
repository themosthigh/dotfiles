{
  description = "The Most High nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nix-darwin, nixpkgs }@inputs:
  let
    configuration = { pkgs, config, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
        environment.systemPackages =
          [
            pkgs.neofetch

            pkgs.mkalias # TODO: add aliases for macos

            pkgs.nerd-fonts.monaspace
            pkgs.nerd-fonts.fira-code
            pkgs.monaspace
            pkgs.cascadia-code

            pkgs.stow         
            pkgs.starship

            pkgs.slack
            pkgs.firefox

            pkgs.devenv
          ];

        # Necessary for using flakes on this system.
        nix.settings.experimental-features = "nix-command flakes";
        nixpkgs.config.allowUnfree = true; 

        # Enable alternative shell support in nix-darwin.
        programs.fish.enable = true;

        # Set Git commit hash for darwin-version.
        system.configurationRevision = self.rev or self.dirtyRev or null;

        # Used for backwards compatibility, please read the changelog before changing.
        # $ darwin-rebuild changelog
        system.stateVersion = 6;

        # The platform the configuration will be used on.
         nixpkgs.hostPlatform = "aarch64-darwin";

        # Activation script
        system.activationScripts.applications.text = let
          env = pkgs.buildEnv {
            name = "system-applications";
            paths = config.environment.systemPackages;
            pathsToLink = "/Applications";
          };
        in
          pkgs.lib.mkForce ''
          # Set up applications.
          echo "setting up /Applications..." >&2
          rm -rf /Applications/Nix\ Apps
          mkdir -p /Applications/Nix\ Apps
          find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
          while read -r src; do
            app_name=$(basename "$src")
            echo "copying $src" >&2
            ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
          done
          ''; 


    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#simple
    darwinConfigurations."darwin" = nix-darwin.lib.darwinSystem {
      modules = [
          configuration
          ./modules/developer-tools.nix
      ];
    };
  };
}
