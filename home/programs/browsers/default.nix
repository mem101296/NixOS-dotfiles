{ pkgs, ... }:

#For programs without configs yet

{
  home.packages = with pkgs; [
    librewolf
  ];
}
