{
  pkgs,
  config,
  ...
}: 
{
  home.pointerCursor = {
    package = pkgs.qogir-icon-theme.override {
      colorVariants = ["dark"];
    };
    name = "Qogir-dark";
    size = 16;
    gtk.enable = true;
    x11.enable = true;
  };

  gtk = {
    enable = true;
    font = {
      name = "Noto Sans";
      package = pkgs.noto-fonts;
      size = 14;
    };

    gtk2.configLocation = "${config.xdg.configHome}/gtk-2.0/gtkrc";

    iconTheme = {
      name = "Pop";
      package = pkgs.pop-icon-theme;
    };

    theme = {
      name = "Orchis-Green-Dark";
      package = pkgs.orchis-theme;
    };
  };
} 
