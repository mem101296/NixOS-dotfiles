{ lib, self, inputs, ... }:

{

  imports = [
    ./terminal
    inputs.nix-index-db.hmModules.nix-index
    #inputs.hyprlock.homeManagerModules.default
    #inputs.hypridle.homeManagerModules.default
    #inputs.hyprpaper.homeManagerModules.default
  ];
            
  home = {
    username = "exspiravit";
    homeDirectory = "/home/exspiravit";
    stateVersion = "23.05"; # Please read the comment before changing 23.05.
  };
  
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch"; #reloads config files


}
