{ config, nixpkgs, pkgs, vars, lib, ... }:

with lib;

{
    environment.systemPackages = with pkgs; [
      wineWowPackages.staging
      wineWowPackages.waylandFull
      wineWowPackages.fonts
      winetricks
      mono
    ];

    programs.steam = {
      enable = true;
      package = pkgs.steam;
      remotePlay.openFirewall = true;
    };
    programs.gamemode.enable = true;


    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
        "steam"
        "steam-original"
        "steam-runtime"
    ]; 
}
