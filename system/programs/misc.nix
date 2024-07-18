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
    zsh-powerlevel10k #zsh visual candy
    killall #killall command
    openssh #ssh stuff
    sd-switch #allows systemd reloading after changes to hm
    neofetch #output your system info
    libva-utils #graphis utils for intel va-api
    pamixer #sounds
    veracrypt #mount encrypted drives
    progress #loading bar for terminal
    gimp-with-plugins #gimp full package
    inkscape #svg editor
    rsync #sync files with servers via cli
    gsettings-desktop-schemas #Allows gsettings to be shared will applications
    nautilus #gnome file manages
    polkit #allows popup for password
    polkit_gnome #themes popup as gnome
    rofi-wayland #application picker
    swww #animated wallpaper
    grimblast #screeshots on hyprland
    socat #dat moving
    geticons #get icons via name
    teamviewer #remote desktop to help friends
    r2modman #moding manager for unity based games
    #hdos
    flatpak #flatpak installer
    notesnook #encrypted notes
    gnome.gdm #gdm by gmone - wayland compositor
    matugen #theme engine
    fd #alternative to find
    brightnessctl #control brightness of screen
    gzip #zip and extract gz files
    kompose #Kubernetes tool to convert docker compose files
    minikube #Run a Kubernetes cluster locally in a single pod
    kubectl
    
    #media
    vlc #audio and video player
    loupe #image view written in rust and GTK4
    obs-studio #Screen screaming/recording
    xwaylandvideobridge #Allows xwayland apps to share screen with wayland apps

    #networking
    networkmanagerapplet #network manager GUI for gnome
    networkmanager-l2tp #l2tp plugin for network manager
    networkmanager #network config tool
    strongswan #Assist wit l2tp
    networkmanager_strongswan #plugin for network manager for strongswan
  
    #programming
    pkgs.nodejs_22 #node.js install
    python3 #python install
    rust-analyzer #rust compiler
    cargo #rust dependency manager and builder
    rustc #rust installedr
    android-tools #android dev tools
    #lldb_17
    gcc #GNHU compiler
    #glib
    cmake #C++ builder
    meson #Multilanguage compiler - being used for hyprpm
    gnumake #used to bulid apps from source
    terraform #Build an environment from a yml file - being used to learn
    docker #Runs docker containers - being used to learn
    docker-compose #Runs docker compose files - being used to learn
    awscli #Runs AWS commands locally - used with Terraform to learn
    bun #JS runtime - used by AGS in nix.flake
    dart-sass #Sass written in dart (css stuff) - used by AGS

    #gaming
    jdk17_headless #Java install
    gtk2 #GTK 2 support
    gtk3 #GTK 3 support
    gtk4 #GTK 4 support
    #openrgb-with-all-plugins #Control RGB on system
    
    #extra
    _1password-gui #1password GUI

    #work
    zoom-us #Zoom meeting software
    
  ];
} 
