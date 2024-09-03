{ config, nixpkgs, nixpkgs-stable, pkgs, vars, lib, inputs, ... }:

with lib;

{
#    programs.hyprland = {
#      enable = true;
#      xwayland = {  #This may be need in system/programs/hyprland.nix
#        enable = true;
#      };

 #   };

    environment.systemPackages = with pkgs; [
      #Hyprland packages#
      #hyprland-share-picker
#      hyprland-protocols
#      hyprpicker
      hyprpaper
      #############
      #XDG stuff
#      xdg-desktop-portal-hyprland system/programs/xdg
#      xdg-utils
      ############
      #Gnome packages
#      gsettings-desktop-schemas #allows for themimg of gnome apps or apps that use gnomes theming
#      gnome.nautilus
      #libsForQt5.dolphin
#      polkit
#      polkit_gnome
#      libsForQt5.polkit-kde-agent
#      networkmanagerapplet
#      networkmanager-l2tp
#      networkmanager
#      strongswan
#      networkmanager_strongswan
      ############
      #Need things for hyprland to work
#      rofi-wayland #app picker
#      waybar #bar
#      dunst #notifications
#      trayer #used in waybar
#      swww #video background
#      grimblast #screenshot
      ############
#      socat
#      geticons 
#      qt5.qtwayland
#      qt6.qtwayland
#      udiskie #GUI based udisk utility
#      swaylock-effects
#      swayidle
    ];



  }


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
