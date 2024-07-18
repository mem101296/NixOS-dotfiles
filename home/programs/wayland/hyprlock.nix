{ config, inputs, pkgs, ... }:

{
  programs.hyprlock = {
    enable = true;
    #package = pkgs.hyprlock;
    package = inputs.hyprlock.packages.${pkgs.system}.hyprlock;

    settings = {
      general = {
        disable_loading_bar = true;
        hide_cursor = false;
      };

      background  = [
        {
          monitor = "";
          path = "screenshot";
          blur_passes = 3;
          blur_size = 5;
          vibrancy = 1.0;
        }
      ];

      input-fields = [
        {
          monitor = "DP-1";
          #monitor = "";
          size = {
            width = 800;
            height = 100;
          };

          outline_thickness = 2;

          outer_color = "rgba(0, 205, 205, 1)";
          inner_color = "rgba(0, 215, 215, 1)";
          font_color = "rgba(255, 255, 255, 1)";

          fade_on_empty = false;
          #placeholder_text = ''<span font_family="${font_family}" foreground="##${c.primary_container}">Password...</span>'';

          dots_spacing = 0.3;
          dots_center = true;
          position = {
            x = 0; 
            y = -20;
          };
          halign = "center";
          valign = "center";
        }
      ];

    #labels = [
    #  {
    #    monitor = "";
    #    text = "$TIME";
        #inherit font_family;
    #    font_size = 50;
    #    color = "rgba(255, 255, 255, 1)";

    #    position = {
    #      x = 0;
    #      y = 80;
    #    };

    #    valign = "center";
    #    halign = "center";
    #  }
    #];
    };
  };
}
