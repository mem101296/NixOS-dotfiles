############################################################
### This file is used to enable and theme Kitty Terminal ###
############################################################
{ config, lib, pkgs, ... }:

with lib;

{
    programs.kitty = {
        enable = true; #enable Kitty
        package = pkgs.kitty; #installs the kitty package
        shellIntegration.enableZshIntegration = true; #enables ZSH integration
        theme = "3024 Night"; #sets Kitty theme
        #I used extraConfig for my kitty.conf stuff. It allowed "export" and "startup_session" to work.
        extraConfig =
        '' 
            wayland_titlebar_color #000000
            export TERM=kitty
            startup_session ~/.config/kitty/kitty_start
            #font_family MesloLGS NF        
            #font_family iosevka term
            allow_remote_control yes
            listen_on unix:@mykitty
            font_family Comic Mono
            font_size 16.0
            enable_audio_bell no
            tab_bar_margin_width      9
            tab_bar_margin_height     9 0
            tab_bar_style             separator
            tab_bar_min_tabs          1
            tab_separator             ""
            tab_title_template        "{fmt.fg._5c6370}{fmt.bg.default}{fmt.fg._abb2bf}{fmt.bg._5c6370} {title.split()[0]} {fmt.fg._5c6370}{fmt.bg.default} "
            active_tab_title_template "{fmt.fg._e5c07b}{fmt.bg.default}{fmt.fg._282c34}{fmt.bg._e5c07b} {title.split()[0]} {fmt.fg._e5c07b}{fmt.bg.default} "
           #enabled_layouts tall:bias=50;full_size=1;mirrored=false

            #window layout
            map f5 launch --location=hsplit
            map f6 launch --location=vsplit
            map f4 launch --location=split
            map f7 layout_action rotate
            map shift+up move_window up
            map shift+left move_window left
            map shift+right move_window right
            map shift+down move_window down
            map ctrl+shift+up layout_action move_to_screen_edge top
            map ctrl+shift+left layout_action move_to_screen_edge left
            map ctrl+shift+right layout_action move_to_screen_edge right
            map ctrl+shift+down layout_action move_to_screen_edge bottom
            map ctrl+left neighboring_window left
            map ctrl+right neighboring_window right
            map ctrl+up neighboring_window up
            map ctrl+down neighboring_window down
            
        '';
    };
}
