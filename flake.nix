{
  description = "Lucid's NixOS and Home-Manager flake";

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];
      imports = [
        ./home/profiles
        ./hosts
      ];
      
      perSystem = {
        config, 
        pkgs,
        system, 
        ...
      }:
        { devShells.default = pkgs.mkShell {
          shellHook = ''
            export RUST_SRC_PATH=${pkgs.rustPlatform.rustLibSrc}
          '';
          buildInputs = [
            pkgs.pkg-config
            pkgs.gdb
            pkgs.rust-bin.stable.latest.default
            pkgs.glib
            pkgs.gtk4
            pkgs.gtk3
            pkgs.rust-analyzer
          ];
        };
        _module.args.pkgs = import inputs.nixpkgs {
          inherit system;
          overlays = [ (import inputs.rust-overlay) ];
        };
      };
    };    

  inputs = {

    #systems.url = "github:nix-systems/default-linux";
    
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    flake-utils = {
      url = "github:numtide/flake-utils";
      #inputs.systems.follows = "nixpkgs";
    };

    #proton-ge-bin.url = "github:GloriousEggroll/proton-ge-custom"; 

    helix.url = "github:helix-editor/helix";

    hm = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ags = {
      url = "github:Aylur/ags";
    };

    hypridle = {
      url = "github:hyprwm/hypridle";
      inputs.hyprlang.follows = "hyprland/hyprlang";
      inputs.nixpkgs.follows = "hyprland/nixpkgs";
      #inputs.systems.follows = "hyprland/systems";
    };

    hyprland = {
      url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
      #inputs.nixpkgs.follows = "nixpkgs";
      };

    hyprland-contrib = {
      url = "github:hyprwm/contrib";
      inputs.nixpkgs.follows = "hyprland/nixpkgs";
    };

    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
      };
        
        
    hyprscroller = {
      url = "github:dawsers/hyprscroller";
      inputs.hyprland.follows = "hyprland";
    };
    
    hyprlock = {
      url = "github:hyprwm/hyprlock";
      inputs.hyprlang.follows = "hyprland/hyprlang";
      inputs.nixpkgs.follows = "hyprland/nixpkgs";
      #inputs.systems.follows = "hyprland/systems";
    };

    hyprpaper = {
      url = "github:hyprwm/hyprpaper";
      inputs.hyprlang.follows = "hyprland/hyprlang";
      inputs.nixpkgs.follows = "hyprland/nixpkgs";
      #inputs.systems.follows = "hyprland/systems";
    };

    niri-unstable = {
      url = "github:YaLTeR/niri";
      flake = false;
    };    

    nix-citizen = {
        url = "github:LovingMelody/nix-citizen";
        inputs.nix-gaming.follows = "nix-gaming";
      };

    nix-index-db = {
      url = "github:Mic92/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-gaming = {
      url = "github:fufexan/nix-gaming";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
    };

    rust-overlay.url = "github:oxalica/rust-overlay";

    yazi.url = "github:sxyazi/yazi";
  };
}
