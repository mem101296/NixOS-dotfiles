{ pkgs, ... }:

{
  programs.wezterm = {
    enable = true;
    package = pkgs.wezterm;
    enableZshIntegration = true;
    colorSchemes = {
      foreground = "#a5a2a2";
      background = "#001c1ccc";
      cursor_bg = "#a5a2a2";
      cursor_border = "#a5a2a2";
      cursor_fg = "#090300";
      selection_bg = "#4a4543";
      selection_fg = "#a5a2a2";
      ansi = ["#090300" "#db2d20" "#01a252" "#fded02" "#01a0e4" "#a16a94" "#b5e4f4" "#a5a2a2"];
      brights = ["#5c5855" "#e8bbd0" "#3a3432" "#4a4543" "#807d7c" "#d6d5d4" "#cdab53" "#f7f7f7"];
    };
    extraConfig = ''
      local wezterm = require "wezterm";
      return {
        window_background_opacity = 0.7,
        default_cursor_style = 'SteadyBar',
        enable_scroll_bar = true,
        font = wezterm.font("Comic Mono"),
        font_size = 16,
        hide_tab_bar_if_only_one_tab = true,
        scrollback_lines = 10000,
        enable_wayland = false,
        audible_bell = Disabled,
      }
      '';
  };
}
