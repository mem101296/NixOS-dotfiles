{ config, lib, pkgs, ... }:

with lib;

{
  programs.nnn = {
    enable = true;
    package = pkgs.nnn.override ({ withNerdIcons = true; });
  };
}
