#This enables hybernation and screenshut off

{ pkgs,  ... }:

{
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        lock_cmd = "hyprlock"; #call hyprloock
        before_sleep_cmd = "${pkgs.systemd}/bin/loginctl lock-session"; #call loginctl to lock the screen
        after_sleep_cmd = "hyprctl dispatch dpms on"; #call hyprctl to turn off screem
      };

      listener = [
        {
          timeout = 500; #lock after 500 seconds
          on-timeout = "loginctl lock-session"; #lock the screen
        }
        {
          timeout = 550; #turn off screen after 500 seconds
          on-timeout = "hyprctl dispatch dpms off"; #turn off the screen
          on-resume = "hyprctl dispatch dpms on"; #turn on the screen
        }
      ];
    };
  };
}
