{ config, lib, pkgs, ...}:

#CHANGE TO HYPRIDLE

{
  services.swayidle = {
    enable = true;
    package = pkgs.swayidle;
    events = [
      { event = "before-sleep"; command = "hyprctl dispatch dpms off";}
      { event = "after-resume"; command = "hyprctl dispatch dpms on"; }
    ];
    timeouts = [
      { timeout = 300; command = "${config.programs.swaylock.package}/bin/swaylock -f"; }
      { timeout = 360; command = "${pkgs.systemd}/bin/systemctl suspend";}
      #{ timeout = 70; command = "${pkgs.hyprland}/bin/hyprctl dispatch dpms off"; } 
    ];
  };
}

#swayidle -w timeout 300 'swaylock -f -C ~/.config/swaylock/config' timeout 360 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'
