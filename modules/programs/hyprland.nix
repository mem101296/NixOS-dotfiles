{ config, nixpkgs, pkgs, vars, lib, ... }:

{

  #wayland.windowManager.hyprland.enable = true;

  #config = {
  #  systemPackages = with pkgs; [
  #    eww
  #   rofi-wayland
  #    dunst
   #   trayer
  #    swww
  #    socat
  #    geticons
   # ];
  #};


  # hyprland configs, based on https://github.com/notwidow/hyprland
  #home.file.".config/hypr" = {
  #   source = ./hypr-conf;
    # copy the scripts directory recursively
  #  recursive = true;
  #};
  #home.file.".config/hypr/themes".source = "${catppuccin-hyprland}/themes";

  # music player - mpd
  #home.file.".config/mpd" = {
 #   source = ./mpd;
  #  recursive = true;
 # };

  # allow fontconfig to discover fonts and configurations installed through home.packages
  #fonts.fontconfig.enable = true;

  #systemd.user.sessionVariables = {
  #  "NIXOS_OZONE_WL" = "1"; # for any ozone-based browser & electron apps to run on wayland
  #  "MOZ_ENABLE_WAYLAND" = "1"; # for firefox to run on wayland
  #  "MOZ_WEBRENDER" = "1";
  #  };

}