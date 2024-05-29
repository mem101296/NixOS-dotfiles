{ pkgs, lib, config, ... }:

{
  services.hypridle = {
    enable = true;
    lockCmd = "hyprlock";
    beforeSleepCmd = "${pkgs.systemd}/bin/loginctl lock-session";
    afterSleepCmd = "hyprctl dispatch dpms on";

    listeners = [
      {
        timeout = 500;
        onTimeout = "loginctl lock-session";
      }
      {
        timeout = 550;
        onTimeout = "hyprctl dispatch dpms off";
        onResume = "hyprctl dispatch dpms on";
      }
    ];
  };
}
