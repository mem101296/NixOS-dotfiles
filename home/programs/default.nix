###############################################################################################################
### This file is used to point to other files. It allows you to import a directory instead of a single file ###
###############################################################################################################


{pkgs, ...}: {
  imports = [
    ./dunst.nix
    #./games
    ./media.nix
    ./gtk.nix
    ./misc.nix
    #./nnn.nix
    #./trayer.nix
    ./office
    #./wayland
  ];

}
