{
  imports = [
    ./fonts.nix
    ./home-manager.nix
    #./kdeconnect.nix
    ./misc.nix
    ./zsh.nix
    ./flatpak.nix
    ./sddm.nix
    ./plymouth.nix
    #./shell.nix
    ./virtualisation.nix
  ];

  programs = {
    dconf.enable = true;
  };
}
