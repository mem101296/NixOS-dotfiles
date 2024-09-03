{
  wayland.windowManager.hyprland.settings = {
    
    bind = [
      #"$mod, L, exec, loginctl lock-session"
      "$mod, L, exec, loginctl lock-session"
      "$mod, W, exec, wezterm"
      "$mod, P, exec, nautilus -w"
      #"$mod, D, exec, rofi -show drun"
      "$mod, D, exec, ags -b hypr ags -t launcher"

      # Window mod binds
      "$mod, Q, killactive,"
      "$mod SHIFT, R, exec, hyprctl reload,"
      "$mod SHIFT, E, exit,"
      "$mod SHIFT, Q, exec, ags -b hypr ags -t powermenu"
      "$mod, C, togglefloating,"
      "$mod SHIFT, B, pseudo," # dwindle
      "$mod, X, togglesplit," # dwindle

      # Switch workspaces with mod + [0-9]
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"

      #Move to left or right workspace
      "$mod, R, workspace, e-1"
      "$mod, T, workspace, e+1"

      # Move active window to a workspace with mod + SHIFT + [0-9]
      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"
      "$mod SHIFT, 6, movetoworkspace, 6"
      "$mod SHIFT, 7, movetoworkspace, 7"
      "$mod SHIFT, 8, movetoworkspace, 8"
      "$mod SHIFT, 9, movetoworkspace, 9"
      "$mod SHIFT, 0, movetoworkspace, 10"

      # Move focus
      "$mod, left, movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up, movefocus, u"
      "$mod, down, movefocus, d"
      "$mod SHIFT, R, movefocus, l" #N I U E
      "$mod SHIFT, T, movefocus, r"
      "$mod SHIFT, F, movefocus, u"
      "$mod SHIFT, S, movefocus, d"

      # Move Windows
      "$mod, N, movewindow, l" #RTFS
      "$mod, I, movewindow, r"
      "$mod, U, movewindow, u"
      
      # Window resizing
      "$mod SHIFT, N, resizeactive, 0 -30" #Add Left
      "$mod SHIFT, I, resizeactive, -30 0" #Add RightTR
      "$mod SHIFT, U, resizeactive, 0 30" #Up
      "$mod SHIFT, E, resizeactive, 30 0" #Down

      "$mod SHIFT, Y, fullscreen"

      #Move to left or right workspace DOES NOT WORK YET
      #"binds = {
      #  allow_workspace_cycles = true
      #  };
      #"  
      #https://github.com/hyprwm/Hyprland/issues/658
      #$mod, R, workspace, previous
      #$mod, T, workspace, next

      #screenshot
      "$mod SHIFT, P, exec, grimblast save output"
      "$mod CTRL, P, exec, grimblast save area"
      "$mod ALT, P, exec, grimblast save screen"

      # Example special workspace (scratchpad)
      "$mod CTRL, S, togglespecialworkspace, magic"
      "$mod SHIFT, S, movetoworkspace, special:magic"

      # Scroll through existing workspaces with mod + scroll
      "$mod, mouse_down, workspace, e+1"
      "$mod, mouse_up, workspace, e-1"
    ];

    bindm = [
          
      # Move/resize windows with mod + LMB/RMB and dragging
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];
  };
}
