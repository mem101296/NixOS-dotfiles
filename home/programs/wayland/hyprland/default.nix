{ inputs, pkgs, ... }: 

{
  imports = [
    inputs.hyprland.homeManagerModules.default
    ./binds.nix
    ./settings.nix
    ./rules.nix
  ];

  home.packages = [
    inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
  ];

  #systemd.user.services.swayidle.Install.WantedBy = lib.mkForce ["hyprland-session.target"];

  # enable hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

#  systemd = {
#      variables = ["--all"];
#      extraCommands = [
#        "systemctl --user stop graphical-session.target"
#        "systemctl --user start hyprland-session.target"
#      ];
#    };
}
