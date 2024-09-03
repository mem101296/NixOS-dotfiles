# reference https://github.com/id3v1669/nixos-flake/blob/master/home/enviroment/rofi/default.nix

{ config, lib, pkgs, ...  }:

{
  programs.rofi = {
    enable = true;
    packages = pkgs.rofi-wayland;
    font = "JetBrains Mono Nerd Font 10";
    extraConfig = {
      modi = "drun";
      show-icons = true;
      display-drun = "";
      drun-display-format = "{name}";
      window-format = "{w} · {c} · {t}";  
    };
    theme =
      #mkLiteral to represent a value that is not supposed to have "" around it
      let
        inherit (config.lib.formats.rasi) mkLiteral;
      in {
        "*" = {
          background = mkLiteral"rgba(0, 28, 28, 0.8)";
          background-alt = mkLiteral"rgba(0, 205, 205, 0.9)";
          foreground = mkLiteral"#01ffff";
          selected = mkLiteral"rgba(1, 255, 255, 0.8)";
          active = mkLiteral"#000000";
          urgent = mkLiteral"#8E3596";
          border-color = mkLiteral"rgba(0, 205, 205, 0.8)";
          selectedtext = mkLiteral"#001c1c";
        };
        "window" = {
          transparency = "real";
          location = mkLiteral"center";
          anchor = mkLiteral"center";
          fullscreen = mkLiteral"false";
          width = mkLiteral"1000px";
          x-offset = mkLiteral"0px";
          y-offset = mkLiteral"0px";
          border = mkLiteral"3px";
          enabled = mkLiteral"true";
          border-radius = mkLiteral"20px";
          cursor = "default";
          background-color = mkLiteral"@background";
        };
        "mainbox" = {
          enabled = mkLiteral"true";
          spacing = mkLiteral"0px";
          padding = mkLiteral"30px";
          background-color = mkLiteral"transparent";
          orientation = mkLiteral"vertical";
          children = map mkLiteral [ "inputbar" "dummy" "listbox" ];
        };
        "listbox" = {
          spacing = mkLiteral"20px";
          background-color = mkLiteral"transparent";
          orientation = mkLiteral"horizontal";
          children = map mkLiteral[ "dummy" "listview" "dummy" ];          
        };
        "inputbar" = {
          enabled = mkLiteral"true";
          spacing = mkLiteral"10px";
          padding = mkLiteral"0px 140px";
          background-color = mkLiteral"transparent";
          text-color = mkLiteral"@foreground";
          orientation = mkLiteral"horizontal";
          children = map mkLiteral["entry"];
          
        };
        "textbox-prompt-colon" = {
          enabled = mkLiteral"true";
          expand = mkLiteral"false";
          str = "";
          padding = mkLiteral"12px 15px";
          border-radius = mkLiteral"100%";
          background-color = mkLiteral"@background-alt";
          text-color = mkLiteral"inherit";
        };
        "entry" = {
          enabled = mkLiteral"true";
          expand = mkLiteral"false";
          width = mkLiteral"670px";
          padding = mkLiteral"20px 16px";
          border-radius = mkLiteral"100%";
          background-color = mkLiteral"@background-alt";
          text-color = mkLiteral"@selectedtext";
          cursor = mkLiteral"text";
          placeholder = "Search";
          placeholder-color = mkLiteral"inherit";
        };
        "dummy" = {
          expand = mkLiteral"false";
          width = mkLiteral"200px";
          margin = mkLiteral"20px";
          background-color = mkLiteral"transparent";
        };
        "listview" = {
          enabled = mkLiteral"true";
          width = mkLiteral"670px";
          columns = mkLiteral"1";
          lines = mkLiteral"5";
          cycle = mkLiteral"true";
          dynamic = mkLiteral"true";
          scrollbar = mkLiteral"false";
          layout = mkLiteral"vertical";
          reverse = mkLiteral"false";
          fixed-height = mkLiteral"true";
          fixed-columns = mkLiteral"true";
          spacing = mkLiteral"10px";
          background-color = mkLiteral"transparent";
          text-color = mkLiteral"@foreground";
          cursor = "default";
        };
        "element" = {
          enabled = mkLiteral"true";
          spacing = mkLiteral"10px";
          padding = mkLiteral"10px";
          border-radius = mkLiteral"100%";
          background-color = mkLiteral"transparent";
          text-color = mkLiteral"@foreground";
          cursor = mkLiteral"pointer";
        };
        "element normal.normal" = {
          background-color =  mkLiteral"inherit";
          text-color =  mkLiteral"@inherit";
        };
        "element normal.urgent" = {
          background-color =  mkLiteral"@urgent";
          text-color =  mkLiteral"@foreground";
        };
        "element normal.active" = {
          background-color =  mkLiteral"@active";
          text-color =  mkLiteral"@foreground";
        };
        "element selected.normal" = {
          background-color =  mkLiteral"@selected";
          text-color =  mkLiteral"@selectedtext";
        };
        "element selected.ugent" = {
          background-color =  mkLiteral"@ugrent";
          text-color =  mkLiteral"@foreground";
        };
        "element selected.active" = {
          background-color =  mkLiteral"@ugrent";
          text-color =  mkLiteral"@foreground";
        };
        "element-icon" = {
          background-color =  mkLiteral"transparent";
          text-color =  mkLiteral"inherit";
          size =  mkLiteral"32px";
          cursor =  mkLiteral"inherit";
        };
        "element-text" = {
          background-color =  mkLiteral"transparent";
          text-color =  mkLiteral"inherit";
          cursor =  mkLiteral"inherit";
          anchor =  mkLiteral"center";
          vertical-align =  mkLiteral"0.5";
          horizontal-align =  mkLiteral"0.0";
        };
        "message" = {
          background-color = mkLiteral"transparent";
          
        };
        "textbox" = {
          padding =  mkLiteral"12px";
          border-radius =  mkLiteral"100%";
          background-color = mkLiteral"@background-alt";
          text-color = mkLiteral"@foreground";
          vertical-align = mkLiteral"0.5";
          horizontal-align = mkLiteral"0.0";
        };
        "error-message" = {
          padding = mkLiteral"12px";
          border-radius = mkLiteral"20px";
          background-color = mkLiteral"@background";
          text-color = mkLiteral"@foreground";
        };
      };
    };
}
