{
  imports = [
    # editors
    ../../editors/helix
    
    # programs
    ../../programs
    ../../programs/wayland
    ../../programs/games
    
    # services
    ../../services/system/polkit-agent.nix
    ../../services/system/udiskie.nix
    #../../services/cinny.nix

    #Commenting out for now
    # media services
    #../../services/media/playerctl.nix
    #../../services/media/spotifyd.nix

    #Commenting out for now
    # system services
    #../../services/system/dunst.nix
    ../../services/kdeconnect.nix
    ../../services/system/polkit-agent.nix
    #../../services/system/power-monitor.nix
    #../../services/system/syncthing.nix
    ../../services/system/udiskie.nix

    # wayland-specific
    ../../services/wayland/hyprpaper.nix
    ../../services/wayland/hypridle.nix
    #../../services/wayland/swayidle.nix

    #Gotta see if Zillij falls into emulators
    # terminal emulators
    #../../terminal/emulators/foot.nix
    #../../terminal/emulators/wezterm.nix
  ];


}
