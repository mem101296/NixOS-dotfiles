#
#  File telling nix which general settings to use. Exact system settins are within the host folder (ie. unus or duo)
#
#  flake.nix 
#   └─ ./systems 
#       ├─ default.nix *
#       ├─ configuration.nix
#

{ config, pkgs, nixpkgs, libs, vars, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      #./hardware-configuration.nix
    ];
    
#################   
####user settings
################# 

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.exspiravit = {
    isNormalUser = true;
    description = "Exspiravit";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };

################# 
####Defaults
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
####display manager - gnome is used on all devices
################# 

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

################# 
####Printing
################# 

  # Enable CUPS to print documents.
  services.printing.enable = true;

################# 
####sound
################# 

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

################# 
####packages
################# 

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  # https://search.nixos.org/packages?channel=unstable
  environment.systemPackages = with pkgs; [

    pkgs.mattermost-desktop
    pkgs.kitty
    pkgs.librewolf
    pkgs.ungoogled-chromium
    pkgs.vscodium
    pkgs.gnome.gnome-tweaks
    pkgs.signal-desktop
    pkgs.betterbird
    pkgs.gparted
    pkgs.gnome-extension-manager
    pkgs.gnomeExtensions.blur-my-shell
    pkgs.gnomeExtensions.burn-my-windows
    pkgs.gnomeExtensions.dash-to-dock-for-cosmic
    pkgs.gnomeExtensions.just-perfection
    pkgs.gnomeExtensions.launch-new-instance
    pkgs.gnomeExtensions.user-themes
    pkgs.gnomeExtensions.pop-shell
    pkgs.oh-my-zsh
    pkgs.zsh-powerlevel10k
    pkgs.home-manager
    pkgs._1password-gui
    pkgs.pop-gtk-theme
    pkgs.orchis-theme
    pkgs.pop-icon-theme
    pkgs.qogir-icon-theme
    pkgs.steam
    pkgs.gamemode
    pkgs.lutris
    pkgs.gnome3.adwaita-icon-theme
  ];

  #all font packages must be put here to be used
  fonts.packages = with pkgs; [
    pkgs.comic-mono
    pkgs.meslo-lgs-nf
  ];

  #allows zsh to work
  #programs.zsh.enable = true;

################# 
####system stuff
################# 


  system = {                                # NixOS Settings
    stateVersion = "23.05";
  };

  #env variables
  environment.sessionVariables = rec {
    SHELL="/bin/zsh";
    ZSH="$HOME/.oh-my-zsh";
 };

################# 
####shome manager
################# 

  home-manager.users.${vars.user} = {       # Home-Manager Settings
    home = {
      stateVersion = "23.05";
    };

    programs = {
      home-manager.enable = true;
    };
  };

################# 
####extra nix
################# 

  #deletes older generations
  nix = {
    gc = { #auto deletes generations
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 2d";
    };
    package = pkgs.nixFlakes; #enable flakes
    extraOptions = "experimental-features = nix-command flakes";
  };
}
