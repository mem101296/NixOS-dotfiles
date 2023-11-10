#
#  This file is the first to be run, it has the channels (repos) and configs
#  Unus = desktop
#  Duo = laptop
# Work coming soon
#
#  flake.nix 
#   └─ 
#

{
  description = "Unus and Duo ";

############################
### Input                ###
############################

  #the things usde to build outputs, like nix-channels
  inputs = {
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable"; #For unstable nixos builds - aka rolling release
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable"; #For unstable nixos builds - aka rolling release
    
    home-manager = { #for the use of home manage
      url = github:nix-community/home-manager/;
      inputs.nixpkgs.follows = "nixpkgs"; #forces home manager to use nix package manager instead of it's own
    };
    
    nur = { #nix user repository
      url = "github:nix-community/NUR"; 
    };

    hyprland.url = "github:hyprwm/Hyprland"; #Hyprland URL



  };
  
############################
### Output               ###
############################

  outputs = inputs @ { self, nixpkgs, home-manager, nur, ... }: 
    let
      vars = { #variables for configs
         user = "exspiravit";
         terminal = "kitty";
         editor = "nano";         
      };
      system = "x86_64-linux";                                  # System Architecture
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;

    in {

##########
##Configs
##########

      nixosConfigurations = {

##########
##Desktop (unus) Config
##########

        unus = lib.nixosSystem {
          inherit system;
          specialArgs = {                                         
            inherit system nixpkgs home-manager vars nur lib;
            host = {
            hostName = "unus";
            };
          };
          modules = [                                             # Modules Used
            nur.nixosModules.nur
            ./systems/unus
          
            home-manager.nixosModules.home-manager {              # Home-manager for desktop
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.exspiravit = import ./home-manager/home.nix;
            }
          ];
        };

##########
##Laptop (duo) Config
##########



#      nixosConfigurations = (   #imports the system config file
#        import ./systems {
#          inherit (nixpkgs) lib; #passes librarys
#          inherit nixpkgs home-manager nur vars; #passes variables
#        }
#      );
#      homeConfigurations = ( #imports the home manager file
#        import ./home-manager/home.nix {
#          inherit (nixpkgs) lib; #passes librarys
#          inherit nixpkgs home-manager nur vars; #passes variables
#        }
#      );
    };
  };
}
