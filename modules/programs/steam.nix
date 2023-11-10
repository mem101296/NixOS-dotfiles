{ config, nixpkgs, pkgs, vars, lib, ... }:

with lib;

{
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
