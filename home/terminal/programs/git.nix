{ config, pkgs, ... }: 

{
  home.packages = [pkgs.gh];

  # enable scrolling in git diff
  home.sessionVariables.DELTA_PAGER = "less -R";

  programs.git = {
    enable = true;

    delta = {
      enable = true;
    };

    extraConfig = {
      diff.colorMoved = "default";
      merge.conflictstyle = "diff3";
    };

    ignores = ["*~" "*.swp" "*result*" ".direnv" "node_modules"];

    signing = {
      key = "${config.home.homeDirectory}/.ssh/id_rsa";
      signByDefault = true;
    };

    extraConfig.gpg.format = "ssh";

    userEmail = "mem101296@protonmail.com";
    userName = "Michael Martin";
  };
}
