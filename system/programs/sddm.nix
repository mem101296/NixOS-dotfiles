{ pkgs, ...}:

{
  services.displayManager.sddm = {
    enable = true;
    #package = pkgs.kdePackages.sddm;
    enableHidpi = true;
    wayland.enable = true;
    theme = "catppuccin-macchiato";
  };
  services.desktopManager.plasma6.enable = true;
  environment.systemPackages = with pkgs; [
    #kdePackages.breeze
    (catppuccin-sddm.override {
      flavor = "macchiato";
      font  = "Noto Sans";
      fontSize = "16";
      #background = "${./wallpaper.png}";
      loginBackground = true;
    })
    #libsForQt5.breeze-qt5
    #kdePackages.qt5compat
    #kdePackages.qtdeclarative
    #kdePackages.qtsvg
    #libsForQt5.qt5.qtgraphicaleffects
  ];
}
