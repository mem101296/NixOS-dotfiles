{
  self,
  inputs,
  homeImports,
  ...
}: {
  flake.nixosConfigurations = let
    # shorten paths
    inherit (inputs.nixpkgs.lib) nixosSystem;
    mod = "${self}/system";

    # get the basic config to build on top of
    inherit (import "${self}/system") unus;

    # get these into the module system
    specialArgs = {inherit inputs self;};
  in {
    unus = nixosSystem {
      inherit specialArgs;
      modules =
        unus
        ++ [
          ./unus
          "${mod}/programs/gamemode.nix"
          "${mod}/programs/hyprland.nix"
          "${mod}/programs/steam.nix"

          "${mod}/services/gnome-services.nix"
          "${mod}/services/location.nix"

          {
            home-manager = {
              users.exspiravit.imports = homeImports."exspiravit@unus";
              extraSpecialArgs = specialArgs;
            };
          }
        ];
    };
  };
}
