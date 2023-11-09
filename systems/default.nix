#
#  These are the different profiles that can be used when building NixOS.
#
#  flake.nix 
#   └─ ./hosts  
#       ├─ default.nix *
#       ├─ configuration.nix
#       └─ ./<host>.nix
#           └─ default.nix 
#

{ lib, nixpkgs, home-manager, nur, vars, ... }:

let
  system = "x86_64-linux";                                  # System Architecture

  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;                              # Allow Proprietary Software
  };

  lib = nixpkgs.lib;
  
############################
### Desktop              ###
############################

in
{
  desktop = lib.nixosSystem {                               # Desktop Profile
    inherit system;
    specialArgs = {                                         # Pass Flake Variable
      inherit system nixpkgs home-manager vars;
      host = {
        hostName = "unus";
      };
    };
    modules = [                                             # Modules Used
      nur.nixosModules.nur
      ./unus
      ./configuration.nix

      home-manager.nixosModules.home-manager {              # Home-manager for desktop
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.users.exspiravit = {
          imports = [ ../home-manager/home.nix ]; #import home.nix
        };
      }
    ];
  };

  ############################
  ### Laptop               ###
  ############################

  #laptop = lib.nixosSystem {                                # Laptop Profile
  #  inherit system;
  #  specialArgs = {
  #    inherit inputs unstable vars;
  #    host = {
  #      hostName = "laptop";
  #    };
  #  };
  #  modules = [
  #    ./laptop
  #    ./configuration.nix

  #    home-manager.nixosModules.home-manager {
  #      home-manager.useGlobalPkgs = true;
  #      home-manager.useUserPackages = true;
  #    }
  #  ];
  #};


}
