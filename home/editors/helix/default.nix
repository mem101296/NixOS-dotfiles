{ config, pkgs, ... }:

{
  imports = [
    #./themes.nix
    ./languages.nix
  ];
  programs.helix = {
    enable = true;
    package = pkgs.helix;
    settings = {
      theme = "base16_terminal";
      editor = {
        color-modes = true;
        true-color = true;
        auto-completion = true;
        auto-format = true;
        mouse = false;
        auto-pairs = true;
        indent-guides = {
          render = true;
          rainbow-option = "dim";
        };

        #        rainbow-brackets = true;
      };
      keys.normal = {
        C-a = "jump_view_left";
        C-r = "jump_view_right";
      };
    };
    #themes = {
    #  monokai_pro = {
    #    "ui.background" = "#001c1ccc";  
    #  };
    #};
  };
}
