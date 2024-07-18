{ pkgs, ... }:

#I'm using this in order to start using this new config. Each of these may need it's on nix file

{
  home.packages = with pkgs; [

    #oh-my-zsh
    #zellij
    imv
    git
    librewolf
    ungoogled-chromium
    glxinfo
    
  ];
}
