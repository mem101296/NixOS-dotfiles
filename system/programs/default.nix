{
  imports = [
    ./fonts.nix
    ./home-manager.nix
    ./misc.nix
    ./zsh.nix
    ./flatpak.nix
    #./shell.nix
    #./virtualisation.nix
  ];

  programs = {
    dconf.enable = true;
  };
}
