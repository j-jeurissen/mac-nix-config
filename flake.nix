{
  description = "my minimal flake";

  # Input sources for required packages and configurations
  inputs = {

    # Nixpkgs: A collection of derivations for building various software
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    # Home Manager: Manages user-specific configurations and symlinks
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Darwin: Manages system-level software and settings, including fonts
    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";

    # Pwnvim: A customized Neovim configuration
    pwnvim.url = "github:zmre/pwnvim";
  };

  # Output configurations for the system
  outputs = inputs@{ nixpkgs, home-manager, darwin, pwnvim, ... }: {
    darwinConfigurations.Jeroens-iMac = darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      pkgs = import nixpkgs { system = "aarch64-darwin"; };

      # List of modules to include in the configuration
      modules = [
        ./modules/darwin
        home-manager.darwinModules.home-manager

        # Home Manager configuration
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = { inherit pwnvim; };
            users.jeroen.imports = [ ./modules/home-manager ];
          };
        }
      ];
    };
  };
}
