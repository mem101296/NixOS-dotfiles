{ pkgs, ... }:

#these are to be sorted into their own nix files based on category or config if supported

{
  environment.systemPackages = with pkgs; [
    #communication
    mattermost-desktop
    signal-desktop
    discord
    
    #tools
    gparted
    zsh-powerlevel10k
    killall
    openssh
    sd-switch
    neofetch
    libva-utils
    pamixer
    veracrypt
    progress
    #gimp-with-plugins
    inkscape
    rsync
    gsettings-desktop-schemas
    gnome.nautilus
    polkit
    polkit_gnome
    rofi-wayland
    swww #animated wallpaper
    grimblast #screeshots on hyprland
    socat #dat moving
    geticons #get icons via name
    teamviewer
    r2modman
    #hdos
    flatpak

    
    #media
    vlc
    loupe
    obs-studio
    xwaylandvideobridge

    #networking
    networkmanagerapplet
    networkmanager-l2tp
    networkmanager
    strongswan
    networkmanager_strongswan
  
    #programming
    pkgs.nodejs_22
    #nodePackages_latest.vscode-css-languageserver-bin
    python3
    #vscode-langservers-extracted
    #rustup
    rust-analyzer
    cargo
    rustc
    #vscode-extensions.vadimcn.vscode-lldb
    #lldb_17
    #gcc
    #glib

    #gaming
    #jdk22
    jdk17_headless
    #prismlauncher
    gtk2
    gtk3
    gtk4
    #openrgb-with-all-plugins
    
    #extra
    _1password-gui
    #notion-app-enhanced

    #work
    zoom-us
    
  ];
} 
