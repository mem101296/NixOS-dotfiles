This will explain what each directory and file does

---
- editors - contains configs for code edits
  - helix - helix config
    - default.nix - brings all configs together and lint servers, plus some config
    - languages.nix - language server config
    - themes.nix - theme config

---    

- profiles - contains profiles to allow specific flakes for specific computers
  - duo - work and personal laptop config - both Dell XPS
  
  - unus - personal desktop config
    - default.nix - where the flakes for unus are declared
  
  - default.nix - common config for both profiles

---

- programs - contains all flakes retaining to home-manager programs
  - browsers - for browser settings, not being used
    - chromium.nix - chrome related config
    - default.nix - brings together config files, for now holds librewolf.nix
  
  - games - game related config
    - default.nix - contains game specific packages
    
  - office - used for office progams
    - default.nix - currently used for libreoffice config, that needs to be changed
    
  - wayland - all wayland related stuff
    - hyprland - folder will all hyprland config
      - binds.nix - hyprland keybinds
      - default.nix - brings everything together and enables hyprland
      - rules.nix - window rules
      - settings.nix - gapps, eye candy, and layout settings
    - default.nix - brings everything together so wayland can be called only
    - hyprlock.nix - hyprlock config
    
  - default.nix - brings all .nix files in programs together
  
  - gkt.nix - gtk eye candy settings
  
  - media.nix - media program settings
  
  - misc.nix - everything I have yet to config

---

- services - servers related to programs in home-manager
  - system - system related services
    - polkit-agent.nix - enables polkit and configures it
    - udiskie.nix - enables udiskin and mounts a filesystem
  
  - wayland - wayland services
    - hypridle.nix - hypridle config
    - hyprpaper.nix - hyprpaper config

  - kdeconnect.nix - kdeconnect service

---

- terminal - terminal related config
  - emulator - config for kitty, wezterm, or any terminal emulator
    - kitty.nix - config for kitty
    - wezterm.nix - config for wezterm

  - programs - terminal related programs (ie git, yazi, etc)
    - yazi
      - theme
        - icons.nix - what icons should look like
        - manager.nix - general UI visuals
        - status.nix - status bar visuals
      - default.nix - brings everything together with settings
    - default.nix - brings everything together
    - git.nix - config for git
    - xdg.nix - xdg env variables and settings

  - shell - for zsh, fish, or bash settings
    - zsh.nix - my zsh config, still needs some tweaking

  - default.nix - brings everything together, with env variables

---

- default.nix - inputs needed, hm stuff, and temp for ags config
