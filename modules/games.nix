########################################################################
### This file is used to enable gaming in Linus via Steam and Lutris ###
########################################################################
{ config, nixpkgs, pkgs, vars, lib, ... }:

with lib;

###############################
#### Required dependencies ####
################################
#### All for Lutris to work ####
################################

{
    environment.systemPackages = with pkgs; [
      wineWowPackages.staging
      wineWowPackages.waylandFull
      wineWowPackages.fonts
      winetricks
      mono
      lutris
      gnome3.adwaita-icon-theme
    ];
    hardware.opengl.driSupport32Bit = true;

###############
#### Steam ####
###############

    programs.steam = {
      enable = true; #enables the steam package
      package = pkgs.steam; #installs the steam package
      remotePlay.openFirewall = true; #allows remote play
      #gamescopeSession.enable = true; #only needed if you remove gamescope from system packages
    };
    programs.gamemode.enable = true; #helps with performance

###################
#### Gamescope ####
###################

    programs.gamescope = {
      enable = true; #enables gamescrope
      package = pkgs.gamescope; #install gamescope package

    };

########################
#### Steam packages ####
########################

    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        "steam"
        "steam-original"
        "steam-runtime"
    ]; 
}

#notes
#If your mouse leaves the game in lutris do the following:
#Add: "gamescope -w 3840 -h 2160 --" to the command prefix of the game
#Change the res to match yours of course
