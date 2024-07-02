{
  pkgs,
  inputs,
  config,
  ...
}:
# games
{
  home.packages = with pkgs; [
    inputs.nix-gaming.packages.${pkgs.system}.star-citizen
    inputs.nix-citizen.packages.${pkgs.system}.star-citizen
    #inputs.proton-ge-custom.defult
    input-remapper
    gamescope
    lutris
    winetricks
    prismlauncher
  ];

  

  #programs.gamescope.enable = true;
}
