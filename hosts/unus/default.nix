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
    #displayManager.gdm = {
    #displayManager.sddm = {
      #enable = true; #enable gdm
      #wayland = true;
    #};
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
  
 
  # Enable networking
networking.networkmanager.enable = true;


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
    #sound.enable = true;
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
      nixFlakes #figure out location
      home-manager #figure out location
    ];
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

    nixpkgs.config.permittedInsecurePackages = [
      "freeimage-unstable-2021-11-01"
    ];

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
