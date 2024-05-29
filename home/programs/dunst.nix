{ pkgs, inputs, ...}:

{
  services.dunst = {
    package = pkgs.dunst;
    enable = true;
  };
}
