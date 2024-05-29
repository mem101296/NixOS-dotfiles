{ self, inputs, ...}: let
  # get these into the module system
  extraSpecialArgs = {inherit inputs self;};

  homeImports = {
    #Desktop
    #Below is commented out unil full rebuild. Current username is different
    #"lucid@unus" = [
    #  ../.
    #  ./unus
    #];
    #This is used until rebulid
    "exspiravit@unus" = [
      ../.
      ./unus
    ];
  };

  inherit (inputs.hm.lib) homeManagerConfiguration;

  pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
in {
  # we need to pass this to NixOS' HM module
  _module.args = {inherit homeImports;};

  flake = {
    homeConfigurations = {
      #For desktop
      "unus" = homeManagerConfiguration {
        #modules = homeImports."lucid@unus"; #since current username is not yet lucid, keeping commented until full rebuild
        modules = homeImports."exspiravit@unus"; #only being used until full rebulid
        inherit pkgs extraSpecialArgs;
      };
    };
  };
}
