{ pkgs, ... }:

{
  programs.wezterm = {
    enable = true;
    package = pkgs.wezterm;
    enableZshIntegration = true;
    colorSchemes = {
    #  foreground = "#a5a2a2";
      background = "#001c1ccc";
    #  cursor_bg = "#a5a2a2";
    #  cursor_border = "#a5a2a2";
    #  cursor_fg = "#090300";
    #  selection_bg = "#4a4543";
    #  selection_fg = "#a5a2a2";
    #  ansi = ["#090300" "#db2d20" "#01a252" "#fded02" "#01a0e4" "#a16a94" "#b5e4f4" "#a5a2a2"];
    #  brights = ["#5c5855" "#e8bbd0" "#3a3432" "#4a4543" "#807d7c" "#d6d5d4" "#cdab53" "#f7f7f7"];
    };
    extraConfig = ''
      local wezterm = require "wezterm";
      return {
        keys = {
          {
            key = 'RightArrow',
            mods = 'CTRL|SHIFT',
            -- action = wezterm.action.SplitHorizontal({domain = 'CurrentPaneDomain'}),
            action = wezterm.action.SplitPane { direction = 'Right', size = { Percent = 50 }, }
          },
          {
            key = 'LeftArrow',
            mods = 'CTRL|SHIFT',
            -- action = wezterm.action.SplitHorizontal({domain = 'CurrentPaneDomain'}),
            action = wezterm.action.SplitPane { direction = 'Left', size = { Percent = 50 }, }
          },
          {
            key = 'DownArrow',
            mods = 'CTRL|SHIFT',
            -- action = wezterm.action.SplitHorizontal({domain = 'CurrentPaneDomain'}),
            action = wezterm.action.SplitPane { direction = 'Down', size = { Percent = 50 }, }
          },
          {
            key = 'UpArrow',
            mods = 'CTRL|SHIFT',
            -- action = wezterm.action.SplitHorizontal({domain = 'CurrentPaneDomain'}),
            action = wezterm.action.SplitPane { direction = 'Up', size = { Percent = 50 }, }
          },
          {
            key = 'q',
            mods = 'CTRL',
            action = wezterm.action.CloseCurrentPane({confirm = true}),
          },
          {
            key = 'LeftArrow',
            mods = 'CTRL',
            action = wezterm.action.ActivatePaneDirection 'Left',
          },
          {
            key = 'RightArrow',
            mods = 'CTRL',
            action = wezterm.action.ActivatePaneDirection 'Right',
          },
          {
            key = 'UpArrow',
            mods = 'CTRL',
            action = wezterm.action.ActivatePaneDirection 'Up',
          },
          {
            key = 'DownArrow',
            mods = 'CTRL',
            action = wezterm.action.ActivatePaneDirection 'Down',
          },
          {
            key = 'LeftArrow',
            mods = 'CTRL|ALT',
            action = wezterm.action.AdjustPaneSize { 'Left', 5 },
          },
          {
            key = 'DownArrow',
            mods = 'CTRL|ALT',
            action = wezterm.action.AdjustPaneSize { 'Down', 5 },
          },
          { 
            key = 'UpArrow', 
            mods = 'CTRL|ALT', 
            action = wezterm.action.AdjustPaneSize { 'Up', 5 } },
          {
            key = 'RightArrow',
            mods = 'CTRL|ALT',
            action = wezterm.action.AdjustPaneSize { 'Right', 5 },
          },
        },

        default_cursor_style = 'SteadyBar',
        enable_scroll_bar = true,
        font = wezterm.font_with_fallback {
        'Comic Mono',
        'Jetbrains Mono',
        },
        window_background_opacity = 0.8,
        font_size = 16,
        hide_tab_bar_if_only_one_tab = true,
        scrollback_lines = 10000,
        enable_wayland = false,
        audible_bell = Disabled,
        color_scheme = "Papercolor Dark (Gogh)",
        enable_scroll_bar = false,
      }
    '';
  };
}
