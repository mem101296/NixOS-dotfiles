{ config, nixpkgs, pkgs, vars, lib, ... }:

with lib.hm.gvariant;

{

  dconf.settings = {
    #firewall stuff
    "org/fedoraproject/FirewallConfig" = {
      show-active-bindings = true;
      show-ipsets = true;
    };

    #Calculator settings
    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      window-maximized = false;
      window-size = mkTuple [ 580 1020 ];
      word-size = 64;
    };

    #background settings
    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/exspiravit/Pictures/b6vcKSe.jpeg";
      picture-uri-dark = "file:///home/exspiravit/Pictures/b6vcKSe.jpeg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    #theme and other visual settings
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      cursor-theme = "Qogir-dark";
      enable-animations = true;
      font-antialiasing = "rgba";
      font-hinting = "slight";
      gtk-theme = "Orchis-Green-Dark";
      icon-theme = "Pop";
      #text-scaling-factor = 1.1000000000000001; #1.10
      text-scaling-factor = 1.1499999999999999; #1.15
      enable-hot-corners = "false";
    };

    #touch pad support
    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    #screensavor - lock screen
    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/exspiravit/.local/share/backgrounds/2023-08-15-08-47-51-material_endeavour.png";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    #sound theme
    "org/gnome/desktop/sound" = {
      theme-name = "Pop";
    };

    #keybinds
    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
      minimize = [];
      move-to-monitor-left = [];
      move-to-monitor-right = [];
      switch-to-workspace-left = ["<Super>r"];
      switch-to-workspace-right = ["<Super>t"];
      move-to-workspace-left = ["<Shift><Super>r"];
      move-to-workspace-right = ["<Shift><Super>t"];
      move-to-workspace-1 = ["<Shift><Super>1"];
      move-to-workspace-2 = ["<Shift><Super>2"];
      move-to-workspace-3 = ["<Shift><Super>3"];
      move-to-workspace-4 = ["<Shift><Super>4"];
      switch-to-workspace-1 = ["<Super>1"];
      switch-to-workspace-2 = ["<Super>2"];
      switch-to-workspace-3 = ["<Super>3"];
      switch-to-workspace-4 = ["<Super>4"];
      screenshot = ["<Super>p"];
    };

    #Windows options
    "org/gnome/desktop/wm/preferences" = {
      audible-bell = false;
      button-layout = "appmenu:minimize,maximize,close";
    };

    #gnome web settings
    "org/gnome/epiphany" = {
      ask-for-default = false;
      default-search-engine = "DuckDuckGo";
      search-engine-providers = "[{'url': <'https://www.bing.com/search?q=%s'>, 'bang': <'!b'>, 'name': <'Bing'>}, {'url': <'https://duckduckgo.com/?q=%s&t=epiphany'>, 'bang': <'!ddg'>, 'name': <'DuckDuckGo'>}, {'url': <'https://www.google.com/search?q=%s'>, 'bang': <'!g'>, 'name': <'Google'>}]";
    };
    
    #gnome web settings
    "org/gnome/epiphany/web" = {
      enable-adblock = true;
      remember-passwords = false;
    };

    #gnome window manager
    "org/gnome/mutter" = {
      edge-tiling = false;
      dynamic-workspaces = "true";
      workspaces-only-on-primary = "false";
    };

    #gnome window manager
    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [];
      toggle-tiled-right = [];
    };

    #Compression settings
    "org/gnome/nautilus/compression" = {
      default-compression-format = "zip";
    };

    #File manager settings
    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "list-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    #Screen night mode
    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = false;
    };

    #Media key settings
    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" ];
      home = [];
      screensaver = [ "<Super>l" ];
    };

    #Media key settings
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Shift><Control>space";
      command = "1password --quick-access";
      name = "1password-quick";
    };

    #General gnome shell settings
    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [ "auto-move-windows@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "user-theme@gnome-shell-extensions.gcampax.github.com" "drive-menu@gnome-shell-extensions.gcampax.github.com" "burn-my-windows@schneegans.github.com" "blur-my-shell@aunetx" "dash-to-dock@micxgx.gmail.com" "freon@UshakovVasilii_Github.yahoo.com" "just-perfection-desktop@just-perfection" "launch-new-instance@gnome-shell-extensions.gcampax.github.com" "pop-shell@system76.com" ];
      favorite-apps = [ "librewolf.desktop" "kitty.desktop" "1password.desktop" "org.gnome.Nautilus.desktop" "codium.desktop" "Mattermost.desktop"];
      last-selected-power-profile = "performance";
    };
    
    #Gnome multitask settings
    "org/gnome/shell/app-switcher" = {
      current-workspace-only = "false";
    };

    #Extention: Burn my windows settings
    "org/gnome/shell/extensions/burn-my-windows" = {
      active-profile = "/home/exspiravit/.config/burn-my-windows/profiles/1692026466334824.conf";
      last-extension-version = 35;
      last-prefs-version = 35;
      prefs-open-count = 1;
      preview-effect = "";
    };

    #Extention: dash-to-dock settings
    "org/gnome/shell/extensions/dash-to-dock" = {
      apply-custom-theme = false;
      background-opacity = 0.8;
      dash-max-icon-size = 64;
      dock-position = "BOTTOM";
      height-fraction = 0.9;
      hot-keys = false;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "eDP-1";
      show-trash = false;
      workspace-agnostic-urgent-windows = true;
      show-favorites = true;
      show-running = true;
      show-windows-preview = true;
      dock-fixed = false;
    };

    #Extention: freon settings
    "org/gnome/shell/extensions/freon" = {
      hot-sensors = [ "CPU" ];
      show-icon-on-panel = false;
    };

    #Extention: Just Perfection settings
    "org/gnome/shell/extensions/just-perfection" = {
      activities-button = false;
      activities-button-icon-monochrome = true;
      activities-button-label = true;
      app-menu = false;
      app-menu-icon = true;
      app-menu-label = false;
      clock-menu-position = 2;
      notification-banner-position = 0;
      power-icon = true;
      window-picker-icon = true;
    };

    #Extention: pop-shell settings
    "org/gnome/shell/extensions/pop-shell" = {
      active-hint = true;
      focus-left = [ "<Alt><Super>Left" ];
      focus-right = [ "<Alt><Super>Right" ];
      hint-color-rgba = "rgb(43,255,0)";
      pop-monitor-left = [];
      pop-monitor-right = [];
      tile-by-default = true;
      tile-move-left-global = [ "<Control><Super>Left" ];
      tile-move-right-global = [ "<Control><Super>Right" ];
      toggle-stacking-global = [];
      active-hint-border-radius = lib.hm.gvariant.mkUint32 [6];
      gap-inner = lib.hm.gvariant.mkUint32 [6];
      gap-outer = lib.hm.gvariant.mkUint32 [6];
    };

    #Extention: user shell theme settings
    "org/gnome/shell/extensions/user-theme" = {
      name = "Orchis-Green-Dark";
    };

    #gnome shelling keybinds
    "org/gnome/shell/keybindings" = {
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
    };

    #gnome tweaks settings
    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };
    
    #gnome clock settings
    "org/gtk/settings/file-chooser" = {
      clock-format = "24H";
    };

    #Border color for pop-shell
    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 0.9254902005195618 0.3686274588108063 ]) ];
      selected-color = mkTuple [ true 0.18039216101169586 ];
    };

    #Border color for pop-shell
    "org/gtk/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 0.16862745098039245 1.0 ]) (mkTuple [ 0.16862745098039217 1.0 ]) (mkTuple [ 0.16778523489932873 1.0 ]) (mkTuple [ 0.984313725490196 0.7215686274509804 ]) ];
      selected-color = mkTuple [ true 0.16862745098039245 ];
    };

  };
}

