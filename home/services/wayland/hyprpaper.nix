{ pkgs, lib, inputs,  ... }: 

#This dictates what the wallpaper will be

{
  #where to put config file, which picture to use as wallpaper
  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ~/nixConfig/background/ai-rendered-space.jpg
    wallpaper = ,contain:~/nixConfig/background/ai-rendered-space.jpg
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
      Description = "Hyprland wallpaper daemon"; #enables daemon
      PartOf = ["graphical-session.target"];
    };
    Service = {
      ExecStart = "${lib.getExe inputs.hyprpaper.packages.${pkgs.system}.default}"; #starts the daemon
      Restart = "on-failure";
    };
    Install.WantedBy = ["graphical-session.target"]; #says what will call the daemon
  };
}
