#
#  This is for my desktop, as name Unus
#
#  flake.nix
#   ├─ ./modules
#   |   └─ ./programs
#   |       └─ games.nix  ﹁
#   |                      | 
#   └─ ./hosts             |
#       └─ ./unus          |
#           └─ default.nix ⌋
#               └─ hardware-configuration.nix
#├─

{ pkgs, inputs, ... }:

 {

#################
#### Imports ####
#################

  imports =
    [
      ./hardware-configuration.nix #Used for hardware config
      #../../modules/games.nix #Used for game settings
      #../../modules/hyprland.nix #Used for Hyperland system stuff
      #../../modules/nfs.nix #used to enable and mount nfs

    ];
    
#####################  
#### Boot loader ####
#####################

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  #boot.loader.systemd-boot.configurationLimit = 3;

  boot.initrd.luks.devices."luks-032efff1-99aa-4362-8638-2bbbd44fead9".device = "/dev/disk/by-uuid/032efff1-99aa-4362-8638-2bbbd44fead9";
  #boot.supportedFilesystems = [ "nfs" ];
  networking.hostName = "unus"; # Define your hostname.

#####################  
#### Display Manager ######
#####################
programs.hyprland.enable = true;
#xdg portals
xdg = {
  autostart.enable = true;
  portal = {
    enable = true;
    #wlr.enable = true;
    #config or configPackages maby be required`
    extraPortals = [
      pkgs.xdg-desktop-portal
      pkgs.xdg-desktop-portal-gtk
     ];
  };

};

services = {
  xserver = {
    enable = true;
#    videoDrivers = [ "amdgpu" ]; 
    displayManager.gdm = {
    #displayManager.sddm = {
      enable = true; #enable gdm
      wayland = true;
    };
  };
  dbus.enable = true; #need to learn what this does
  gvfs.enable = true; #need to learn what this does
  gnome = { #gnome service settings
    sushi.enable = true; #Nautilus previewer
    gnome-keyring.enable = true; #ssh, passwords, etc
  };
  #rpcbind.enable = true; #for mounting nfs
};

#####################  
#### Security ######
#####################

security.polkit.enable = true;
security.pam.services.swaylock = { }; #required for swaylock to unlock
  
#####################  
#### Networking ####
#####################
  
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  
  # Enable networking
  networking.networkmanager.enable = true;

######################
#### user settings ###
######################

    # Define a user account. Don't forget to set a password with ‘passwd’.
#    users.users.exspiravit = {
#      isNormalUser = true;
#      description = "Exspiravit";
#      extraGroups = [ "networkmanager" "wheel" ];
#      shell = pkgs.zsh;
#      ignoreShellProgramCheck = true;
#    };

#################
#### Defaults ###
#################

    # Set your time zone.
    time.timeZone = "America/New_York"; 

    # Select internationalisation properties.
    i18n.defaultLocale = "en_US.UTF-8";

    i18n.extraLocaleSettings = {
      LC_ADDRESS = "en_US.UTF-8";
      LC_IDENTIFICATION = "en_US.UTF-8";
      LC_MEASUREMENT = "en_US.UTF-8";
      LC_MONETARY = "en_US.UTF-8";
      LC_NAME = "en_US.UTF-8";
      LC_NUMERIC = "en_US.UTF-8";
      LC_PAPER = "en_US.UTF-8";
      LC_TELEPHONE = "en_US.UTF-8";
      LC_TIME = "en_US.UTF-8";
    };

################# 
#### Printing ###
################# 

    # Enable CUPS to print documents.
    services.printing.enable = true;

##############
#### Sound ###
##############

    # Enable sound with pipewire.
    sound.enable = true;
    hardware.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;

    };

############################
#### Packages via system ###
############################

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    nix.settings = {
      experimental-features = [ "nix-command" "flakes" ];
      substituters = ["https://nix-gaming.cachix.org"];
      trusted-public-keys = ["nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4="];
    };

    # List packages installed in system profile. To search, run:
    # $ nix search wget
    # https://search.nixos.org/packages?channel=unstable
    environment.systemPackages = with pkgs; [
      #####
      pkgs.nixFlakes #figure out location
      #####
      #pkgs.mattermost-desktop #no home-manager
      #pkgs.librewolf
      #pkgs.ungoogled-chromium
      #pkgs.gnome.gnome-tweaks
      #pkgs.signal-desktop #no home-manager
      #pkgs.betterbird
      #pkgs.gparted #no home-manager
      #pkgs.oh-my-zsh 
      #pkgs.zsh-powerlevel10k #no home-manager
      ####
      pkgs.home-manager #figure out location
      #### 
      #pkgs._1password-gui #no home-manager
      #pkgs.pop-gtk-theme
      #pkgs.orchis-theme
      #pkgs.pop-icon-theme
      #pkgs.qogir-icon-theme
      #pkgs.killall #no home-manager
      #pkgs.discord #no home-manager
      #pkgs.notion-app-enhanced #no home-manager
      #pkgs.jdk17 #no home-manager
      #pkgs.prismlauncher #no home-manager
      #pkgs.openssh #no home-manager
      #pkgs.sd-switch #no home-manager
      #pkgs.helix
      #pkgs.zellij
      #pkgs.neofetch #no home-manager
      #pkgs.zoom-us #no home-manager
      #pkgs.vlc #no home-manager
      #pkgs.loupe #no home-manager
      #pkgs.imv
      ################################
      #Gnome stuff - will we removed once I get hyprland working
      #pkgs.gnome-extension-manager
      #pkgs.gnomeExtensions.blur-my-shell
      #pkgs.gnomeExtensions.burn-my-windows
      #pkgs.gnomeExtensions.dash-to-dock-for-cosmic
      #pkgs.gnomeExtensions.just-perfection
      #pkgs.gnomeExtensions.launch-new-instance
      #pkgs.gnomeExtensions.user-themes
      #pkgs.gnomeExtensions.pop-shell
      ################################
      #libva-utils #no home-manager
      #pkgs.pamixer #no home-manager
      #pkgs.veracrypt #no home-manager
      #pkgs.progress #no home-manager
      #pkgs.git #
      #pkgs.nodejs_21 #no home-manager
      #pkgs.nodePackages_latest.vscode-css-languageserver-bin #no home-manager
      #pkgs.gimp-with-plugins #no home-manager
      #pkgs.rsync #no home-manager
      #pkgs.python3 #no home-manager
      #pkgs.handbrake
      #pkgs.libdvdcss
      #pkgs.inkscape #no home-manager
     # pkgs.nfs-utils
    ];

    #all font packages must be put here to be used
    #fonts.packages = with pkgs; [
    #  pkgs.comic-mono
    #  pkgs.meslo-lgs-nf
    #  pkgs.jetbrains-mono
    #  pkgs.nerdfonts
      #testing these fonts
    #  pkgs.ibm-plex
    #  pkgs.inconsolata
    #  pkgs.iosevka
    #  noto-fonts
    #  noto-fonts-emoji
    #  noto-fonts-cjk
    #];

    #allows zsh to work
    #programs.zsh.enable = true;

#####################
#### System stuff ###
#####################
 
  #programs.dconf.enable = true;

    system = {                                # NixOS Settings
      stateVersion = "23.05";
    };

    #env variables
    environment.sessionVariables = rec {
      #SHELL="/bin/sh";
      ZSH="$HOME/.oh-my-zsh";
      EDITOR="hx";
    };

#####################
#### Home manager ###
#####################

    #home-manager.users.ex = {       # Home-Manager Settings
    #  home = {
    #    stateVersion = "23.05";
    #  };

    #  programs = {
    #    home-manager.enable = true;
    #  };
    #};

##################
#### Extra nix ###
##################

    #deletes older generations
    nix = {
      gc = { #auto deletes generations
        automatic = true;
        dates = "weekly";
        options = "--delete-older-than 2d";
      };
    };
}
