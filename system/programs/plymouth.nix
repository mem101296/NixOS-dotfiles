{ pkgs, ... }:
{
  boot = {
    plymouth = {
      enable = true;
      theme = "circle_alt";
      #Other themes I liked: green_blocks, polaroid, rings_2
      themePackages = with pkgs; [
        (adi1090x-plymouth-themes.override {
          selected_themes = [ "circle_alt" ];
        })
      ];
    };
    consoleLogLevel = 0;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "loglevel=3"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
    ];
  };
}
