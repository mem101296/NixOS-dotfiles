{ config, inputs, pkgs, ... }: 

let
  
  pointer = config.home.pointerCursor;
  
in {
  #wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland = {
  plugins = [
    #inputs.hyprscroller.packages.${pkgs.system}.default
  ];  
  settings = {
    "$mod" = "SUPER";
    env = [
      "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
    ];

    exec-once = [
      "hyprctl setcursor ${pointer.name} ${toString pointer.size}"
      #"waybar"
      "ags -b hypr"
      #"hyprlock"
     # "swayidle -w timeout 300 'swaylock -f -C ~/.config/swaylock/config' timeout 360 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'"
    ];

    monitor = [
      "DP-1,3840x2160@144,0x0,1"
      "DP-2,3840x2160@144,3840x0,1"
    ];

    general = {
      gaps_in = 10;
      gaps_out = 20;
      border_size = 4;
      "col.active_border" = "rgba(4effffcc)";
      "col.inactive_border" = "rgba(9e0000cc)";
      layout = "dwindle";
      allow_tearing = false;
    };

    decoration = {
      rounding = 10;
      blur = {
        enabled = true;
        size = 5;
        passes = 3;
        vibrancy = 1;
      };

      drop_shadow = true;
      shadow_range = 4;
      shadow_render_power = 3;
      shadow_scale = 1;
      "col.shadow" = "rgba(1a1a1aee)";
      dim_inactive = true;
      dim_strength = 0.28;
      inactive_opacity = 1;
    };

    animations = {
      enabled = true;
      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
      animation = [
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, default, popin 80%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 7, default"
        "workspaces, 1, 6, default"
        "fadeSwitch, 1, 7, default"
      ];
    };

    input = {
      kb_layout = "us";
      follow_mouse = 2;
      touchpad.natural_scroll = true;
      sensitivity = 0;
    };

    dwindle = {
      pseudotile = true;
      preserve_split = true;
    };

    misc = {
      force_default_wallpaper = 0;
    };

    gestures = {
      workspace_swipe = false;
    };

  };
  };  
}
