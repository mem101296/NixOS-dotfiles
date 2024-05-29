{ pkgs, lib, inputs, config, ... }: 

{
  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ~/nixConfig/background/darkMountains.jpeg
    wallpaper = ,contain:~/nixConfig/background/darkMountains.jpeg
  '';

  #services.hyprpaper = {
  #  enable = true;
  #  preloads = [
  #    ", '~/nixConfig/background/catCity.png"
  #  ];
  #  wallpapers = [
  #    ", ~/nixConfig/background/catCity.png"
  #  ]; 
  #};

  systemd.user.services.hyprpaper = {
    Unit = {
      Description = "Hyprland wallpaper daemon";
      PartOf = ["graphical-session.target"];
    };
    Service = {
      ExecStart = "${lib.getExe inputs.hyprpaper.packages.${pkgs.system}.default}";
      Restart = "on-failure";
    };
    Install.WantedBy = ["graphical-session.target"];
  };
}
