{ pkgs, inputs, ... }:

{
  services.trayer = {
    package = pkgs.trayer;
    enable = true;
  };
}
