{
  imports = [
    ./fonts.nix
    ./home-manager.nix
    ./misc.nix
    ./zsh.nix
    #./virtualisation.nix
  ];

  programs = {
    dconf.enable = true;
  };
}
