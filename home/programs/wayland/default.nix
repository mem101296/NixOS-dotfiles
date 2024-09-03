{ pkgs, self, ...}: 
{
  imports = [
    ./hyprland
    #./rofi.nix
    #./swayidle.nix
    #./swaylock.nix
    #./waybar
    #./wlogout.nix
    ./hyprlock.nix
    #./niri/niri.nix
  ];

  home.packages = with pkgs; [
    grim

    #self.packages.${pkgs.system}.wl-ocr
    wl-clipboard
    wl-screenrec
    wlr-randr
  ];


  # make stuff work on wayland
  home.sessionVariables = {
    QT_QPA_PLATFORM = "wayland";
    SDL_VIDEODRIVER = "wayland";
    XDG_SESSION_TYPE = "wayland";
  };

}
