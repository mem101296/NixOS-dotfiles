{ config, lib, pkgs, ... }:

with lib;

{
    programs.kitty = {
        enable = true;
        package = pkgs.kitty;
        shellIntegration.enableZshIntegration = true;
        theme = "3024 Night";

        extraConfig =
        '' 
            wayland_titlebar_color #000000
            export TERM=kitty
            startup_session ~/.config/kitty/kitty_start
            font_family MesloLGS NF
            font_size 16.0
            enable_audio_bell no
            tab_bar_margin_width      9
            tab_bar_margin_height     9 0
            tab_bar_style             separator
            tab_bar_min_tabs          1
            tab_separator             ""
            tab_title_template        "{fmt.fg._5c6370}{fmt.bg.default}{fmt.fg._abb2bf}{fmt.bg._5c6370} {title.split()[0]} {fmt.fg._5c6370}{fmt.bg.default} "
            active_tab_title_template "{fmt.fg._e5c07b}{fmt.bg.default}{fmt.fg._282c34}{fmt.bg._e5c07b} {title.split()[0]} {fmt.fg._e5c07b}{fmt.bg.default} "
        '';
    };
}