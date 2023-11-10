#
#  This is for my desktop, as name Unus
#
#  flake.nix 
#   └─ ./hosts  
#       ├─ default.nix *
#       ├─ configuration.nix
#       └─ ./unus
#           └─ default.nix 
#

{ pkgs, unstable, ... }:

 {
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/programs/steam.nix
    ];
    
    # Bootloader.
  boot.loader.systemd-boot.enable = true;boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 3;

  boot.initrd.luks.devices."luks-032efff1-99aa-4362-8638-2bbbd44fead9".device = "/dev/disk/by-uuid/032efff1-99aa-4362-8638-2bbbd44fead9";
  networking.hostName = "unus"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  
  # Enable networking
  networking.networkmanager.enable = true;
  
}
