#
#  This is used to theme the home environment, in this case GTK, gnome, and gnome extensions
#
#  flake.nix 
#   └─ home.nix 
#
{ config, nixpkgs, pkgs, vars, lib, ... }:

############################
### Import Modules       ###
############################

{

  imports = (import ../modules/custom ++
             import ../modules/programs);

############################
### Git setup            ###
############################


  home.username = "exspiravit";
  home.homeDirectory = "/home/exspiravit";
  home.stateVersion = "23.05"; # Please read the comment before changing.
  
  programs.git = { #git setup information
    enable = true;
    userEmail = "mem101296@protonmail.com";
  };

############################
### variables            ###
############################


  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
