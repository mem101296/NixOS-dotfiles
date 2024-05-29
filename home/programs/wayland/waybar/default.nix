{ pkgs, inputs, ... }:

{
  imports = [
    ./settings.nix
    ./style.nix
  ];

  programs.waybar = {
    package = pkgs.waybar;
    enable = true;
    #systemd = {
      #enable = true;
      #target = hyprland-session.target;
    #};
  };
}
