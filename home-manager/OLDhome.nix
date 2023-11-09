#
#  This is used to theme the home environment, in this case GTK, gnome, and gnome extensions
#
#  flake.nix 
#   └─ home.nix 
#
{ config, nixpkgs, pkgs, vars, lib, ... }:

{

  home.username = "exspiravit";
  home.homeDirectory = "/home/exspiravit";
  home.stateVersion = "23.05"; # Please read the comment before changing.
  
  programs.git = { #git setup information
    enable = true;
    userEmail = "mem101296@protonmail.com";
  };


###
#this is for themeing gnome
###

#  gtk = {
#    enable = true;
#   iconTheme = {
#      name = "pop";
#      package = pkgs.pop-icon-theme;
#    };
#    theme = {
#      name = "Orchis-Green-Dark";
#      package = pkgs.orchis-theme;
#    };
#    cursorTheme = {
#      name = "Qogir-dark";
#      packagae = pkgs.qogir-theme;
#    };
  
#  };
  

############################
#Move to gnome modules
#######

  #use 'dconf watch /' to see what you're changing
  dconf.settings = {

    #Extension stuff

    "org/gnome/shell" = {
      disable-user-extensions = false;
      disable-extension-version-validation = true;
      # `gnome-extensions list` for a list
      enabled-extensions = [
        "dash-to-dock@micxgx.gmail.com"
        "blur-my-shell@aunetx"
        "burn-my-windows@schneegans.github.com"
        "dash-to-dock-cosmic-@halfmexicanhalfamazing@gmail.com"
        "drive-menu@gnome-shell-extensions.gcampax.github.com"
        "just-perfection-desktop@just-perfection"
        "launch-new-instance@gnome-shell-extensions.gcampax.github.com"
        "pop-shell@system76.com"
        "screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com"
        "user-theme@gnome-shell-extensions.gcampax.github.com"
        "workspace-indicator@gnome-shell-extensions.gcampax.github.com"
      ];
    };

    ############################
    #Extension settings
    ############################
    #Dash to dock
    "org/gnome/shell/extensions/dash-to-dock" = {
      dock-position = "BOTTOM";
      preferred-monitor-by-connector = "DP-1";
      preferred-monitor = -2;
      dock-fixed = false;
      dash-max-icon-size = 64;
      show-favorites = true;
      show-running = true;
      show-windows-preview = true;
      workspace-agnostic-urgent-windows = true;
      scroll-to-focused-application = true;
      hot-key = false;
      apply-custom-theme = true;
    };

    #Just perfection
    "org/gnome/shell/extensions/just-perfection" = {
      activities-button = false;
      app-menu-label = false;
      clock-menu-position = 2;
      panel-notification-icon = false;
    };

    #pop-shell
    
    "org/gnome/shell/extensions/pop-shell" = {
      active-hint = true;
      active-hint-border-radius = lib.hm.gvariant.mkUint32 [6];
      gap-inner = lib.hm.gvariant.mkUint32 [6];
      gap-outer = lib.hm.gvariant.mkUint32 [6];
    };
    "org/gtk/settings" = {
      color-chooser-selected-color = "(true, 0.16862745098039245, 1.0, 0.0, 1.0)";
    };


    ############################

    #Themeing for gnome

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = "Orchis-Green-Dark";
      icon-theme = "Pop";
      cursor-theme = "Qogir-dark";
      font-antialiasing = "rgba";
      text-scaling-factor = 1.1000000000000001;
      enable-hot-corners = "false";
    };

    "org/gnome/desktop/sound" = { #gnome sounds
      theme-name = "Pop";
    };

    "org/gnome/shell/extensions/user-theme" = {
     name = "Orchis-Green-Dark";
    };

    "org/gnome/shell" = {
      favorite-apps = ["librewolf.desktop"
                       "kitty.desktop"
                       "codium.desktop"
                       "org.gnome.Nautilus.desktop"
                       "Mattermost.desktop"
                       ];
    };

    #gnome settings

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,close";
    };

    "org/gnome/mutter" = {
      dynamic-workspaces = "true";
      workspaces-only-on-primary = "false";
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = "false";
    };

    "org/gnome/desktop/session" = {
      idle-delay = "uint32 300";
    };

    "org/gnome/desktop/screensaver" = {
      lock-enabled = "true";
      lock-delay = "uint32 0";
    };

    "org/gnome/desktop/notifications" = {
      show-in-lock-screen = "true";
    };

    "org/gnome/system/location" = {
      enabled = "false";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-type = "suspend";
      sleep-inactive-ac-timeout = "900";
    };

    "org/gtk/settings/file-chooser" = {
      clock-format = "24H";
    };

    #gnome keyboard shortcuts

    "org/gnome/desktop/wm/keybindings" = {
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
      close = ["<Super>q"];
    };

  
  };

############################


  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
