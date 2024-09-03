{ pkgs, lib, ... }:

{

  #stuff needed to run games
  environment.systemPackages = with pkgs; [
    linuxKernel.packages.linux_zen.xone   
    wineWowPackages.staging
    wineWowPackages.waylandFull
    wineWowPackages.fonts
    wineWowPackages.full
    winetricks
    glfw-wayland-minecraft
  ];
  programs.steam = {
    enable = true;
    extraCompatPackages = [
      pkgs.proton-ge-bin
    ];
    #platformOptimizations.enable = true;

    # fix gamescope inside steam
    package = pkgs.steam.override {
      extraPkgs = pkgs:
        with pkgs; [
          keyutils
          libkrb5
          libpng
          libpulseaudio
          libvorbis
          stdenv.cc.cc.lib
          xorg.libXcursor
          xorg.libXi
          xorg.libXinerama
          xorg.libXScrnSaver
        ];
    };
    remotePlay.openFirewall = true;
  };

  #programs.java.enable = true; 
  #programs.steam.package = pkgs.steam.override { withJava = true; };


  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "steam"
    "steam-original"
    "steam-runtime"
  ];

  hardware.xone.enable = true; 

}
