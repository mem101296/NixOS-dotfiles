{ config, nixpkgs, pkgs, vars, lib, ... }:

with lib;

{
    environment.systemPackages = with pkgs; [
      wineWowPackages.staging
      wineWowPackages.waylandFull
      wineWowPackages.fonts
      winetricks
      mono
      lutris
      gnome3.adwaita-icon-theme
      gamescope
    ];
    hardware.opengl.driSupport32Bit = true;

    programs.steam = {
      enable = true;
      package = pkgs.steam;
      remotePlay.openFirewall = true;
      gamescopeSession.enable = true;
    };
    programs.gamemode.enable = true;


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
