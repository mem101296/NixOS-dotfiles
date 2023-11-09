{
  description = "Unus and Duo ";

############################
### Input                ###
############################

  #the things usde to build outputs, like nix-channels
  inputs = {
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable"; #For unstable nixos builds - aka rolling release
    
    home-manager = { #for the use of home manage
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs"; #forces home manager to use nix package manager instead of it's own
    };
    
    nur = { #nix user repository
      url = "github:nix-community/NUR"; 
    };

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
    in {
      nixosConfigurations = (   #imports the system config file
        import ./systems {
          inherit (nixpkgs) lib; #passes librarys
          inherit nixpkgs home-manager nur vars; #passes variables
        }
      );
      homeConfigurations = ( #imports the home manager file
        import ./home-manager/home.nix {
          inherit (nixpkgs) lib; #passes librarys
          inherit nixpkgs home-manager nur vars; #passes variables
        }
      );
    };
}
