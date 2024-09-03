{ config, lib, ... }:


{
    programs.waybar.settings = {    
        m1-left = {
            id = "m1-left";
            name = "m1-left";
            position = "left";
            output = "DP-1";
            layer = "top";
            height = 0;
            width = 130;
            margin-top = 0;
            margin-bottom = 0;
            margin-left = 0;
            margin-right = 0;
            modules-left = [ "custom/spacer#clocktopm1" "clock#m1" "custom/spacer#clockmiddlem1" "clock#datem1" ];
            modules-center = [ "temperature#m1" "cpu#m1" "memory#m1" "disk#m1" "custom/spacer#traym1top" "tray#m1" "custom/spacer#traym1bottom"];
            modules-right = [ "pulseaudio#m1" "custom/spacer#pulseaudiomiddlem1" "pulseaudio#microphonem1" "custom/spacer#pulseaudiobottomm1" ];   
        
            "clock#m1" = {
                format = "  {:%H:%M}";
                tooltip = true;
                on-click = "swaync-client -t -sw";
            };
        
            "clock#datem1" = {
                format = "  {:%m/%d}";
                tooltip = true; 
            };

            "temperature#m1" = {
                critical-threshold = 80;
                format = "{icon}&#8239;{temperatureC}°C";
                format-icons = ["" "" ""];
            };

            "memory#m1" = {
                format = "󰍛 {}%";
                format-alt = "{used}\n{total} GiB";
                interval = 5;
            };

            "cpu#m1" = {
                format = "󰻠 {usage}%";
                format-alt = "{avg_frequency} GHz";
                interval = 5;
            };

            "disk#m1" = {
                format = "󰋊 {}%";
                format-alt = "{used}\n{total}";
                interval = 5;
                path = "/";
            };

            "tray#m1" = {
                icon-size = 18;
                spacing = 15;
            };

            "pulseaudio#m1" = {
                format = "{icon} {volume}%";
                format-muted = "󰝟";
                format-icons = {
                    default = ["󰕿" "󰖀" "󰕾"];
                };
                on-click = "bash ~/.config/waybar/scripts/volume mute";
                on-scroll-up = "bash ~/.config/waybar/scripts/volume up";
                on-scroll-down = "bash ~/.config/waybar/scripts/volume down";
                scroll-step = 5;
                on-click-right = "pavucontrol";
            };

            "pulseaudio#microphonem1" = {
                format = "{format_source}";
                format-source = " {volume}%";
                format-source-muted = " Muted";
                on-click = "pamixer --default-source -t";
                on-scroll-up = "pamixer --default-source -i 5";
                on-scroll-down = "pamixer --default-source -d 5";
                scroll-step = 5;
            };
    
            "custom/launcher" = {
                format = "";
                on-click = "wofi --show drun -I -a -n -W 500 -H 376 -s ~/.config/wofi/themes/gruvbox.css";
                on-click-right = "wofi --show run -I -a -n -W 500 -H 376 -s ~/.config/wofi/themes/gruvbox.css";  
            };

            "custom/wf-recorder" = {
                format = "{}";
                interval =  "once";
                exec = "echo ''";
                tooltip = "false";
                exec-if = "pgrep 'wf-recorder'";
                on-click = "exec ./scripts/wlrecord.sh";
                signal = 8;
            };

            "custom/hyprpicker" = {
                format = "󰈋";
                on-click = "hyprpicker -a -f hex";
                on-click-right = "hyprpicker -a -f rgb";
            };

            "custom/spacer#clockmiddlem1" = {
                format = " ";
            };
            "custom/spacer#clocktopm1" = {
                format = " ";
            };

            "custom/spacer#pulseaudiomiddlem1" = {
                format = " ";
            };
            
            "custom/spacer#pulseaudiobottomm1" = {
                format = " ";
            };

            "custom/spacer#traym1top" = {
                format = " ";
            };
        
            "custom/spacer#traym1bottom" = {
                format = " ";
            };
        };
#   //////////////////////////////////
#    //right monitor 1
#    //////////////////////////////////
        m1-right = {
            id = "m1-right";
            name = "m1-right";
            output = "DP-1";
            height = 0;
            width = 130;
            margin = "0px 0px 0px 0px";
            layer = "top";
            position = "right";
            spacing = "4";
            modules-right = [ "custom/spacer#middlem1" "custom/spacer#middlem1" "custom/spacer#middlem1" "custom/spacer#middlem1" "custom/spacer#bottomm1" ];
            modules-center = [ "custom/filesm1" "custom/terminalm1" "custom/browserm1" "custom/spacer#topm1" "hyprland/workspaces#m1" "custom/spacer#middlem1" "custom/spacer#middlem1" ];
            modules-left = [ "network#m1" "network#m1speedup" "network#m1speedown" ];
        
            "hyprland/workspaces#m1" = {
                active-only = false;
                all-outputs = true;
                disable-scroll = true;
                disable-click = true;
                persistent-workspaces = { 
                    "1" = []; 
                    "2" = []; 
                    "3" = []; 
                    "4" = []; 
                    "5" = []; 
                };
                format = "{icon}";
                format-icons = { 
                "1" = "";
                "2" = ""; 
                "3" = ""; 
                "4" = "";
                "5" = "";
                "urgent" = "";
                "active" = ""; 
                "default" = ""; 
                "sort-by-number" = "true"; 
                };
            };

            "custom/spacer#topm1" = {
                format = " ";
            };
            
            "custom/spacer#middlem1" = {
                format = " ";
            };
            
            "custom/spacer#bottomm1" = {
                format = " ";
            };

            "network#m1" = {
                interval = 5;
                format-wifi = " ({signalStrength}%)"; # Icon: wifi
                format-ethernet = "󰈀 {ipaddr}"; # Icon: ethernet
                format-disconnected = "⚠ Disconnected";
                tooltip-format = "{ifname}: {ipaddr}";
                on-click = "kitty -e 'nmtui'";
            };
            
            "network#m1speedup" = {
                interval = 5;
                max-lengt = 4;
                format-ethernet = " {bandwidthUpBytes}"; # Icon: ethernet
                tooltip-format = "{ifname}: {ipaddr}";
                on-click = "kitty -e 'nmtui'";
            };
            "network#m1speedown" = {
                interval = 5;
                max-lengt = 4;
                format-ethernet = " {bandwidthDownBytes}"; # Icon: ethernet
                tooltip-format = "{ifname}: {ipaddr}";
                on-click = "kitty -e 'nmtui'";
            };
            "custom/browserm1" = {
                format = "";
                on-click = "exec librewolf"; #choose a browser
            };
    
            "custom/terminalm1" = {
                format = "";
                on-click = "exec kitty"; #choose a terminal
                tooltip = false;
            };
    
            "custom/filesm1" = {
                format = "";
                on-click = "exec nautilus"; #choose a file manager
                tooltip = false;
            };
    
            "custom/launcher" = {
                format = "";
                on-click = "exec rofi";
                tooltip = false;
            };
    
        };
#    //////////////////////////////////
#    //left monitor 2
#    //////////////////////////////////
        m2-right = {
            id = "m2-right";
            name = "m2-right";
            position = "right";
            layer = "top";
            output = "DP-2";
            height = 0;
            width = 130;
            margin = "0px 0px 0px 0px";
            modules-left = [ "custom/spacer#clocktopm2" "clock#m2" "custom/spacer#clockmiddlem2" "clock#datem2" ];
            modules-center = [ "temperature#m2" "cpu#m2" "memory#m2" "disk#m2" "custom/spacer#traym2top" "tray#m2" "custom/spacer#traym2bottom" ];
            mdules-right = [ "pulseaudio#m2" "custom/spacer#pulseaudiomiddlem2" "pulseaudio#microphonem2" "custom/spacer#pulseaudiobottomm2" ];       
            "clock#m2" = {
                format = " {:%H:%M}";
                tooltip = true;
                on-click = "swaync-client -t -sw";
            };
            "clock#datem2" = {
                format = " {:%m/%d}";
                tooltip = true;
            };

            "temperature#m2" = {
                critical-threshold = 80;
                format = "{icon}&#8239;{temperatureC}°C";
                format-icons = ["" "" ""];
            };
            
            "memory#m2" = {
                format = "󰍛 {}%";
                format-alt = "{used}\n{total} GiB";
                interval = 5;
            };
        
            "cpu#m2" = {
                format = "󰻠 {usage}%";
                format-alt = "{avg_frequency} GHz";
                interval = 5;
            };
        
            "disk#m2" = {
                format = "󰋊 {}%";
                format-alt = "{used}\n{total}";
                interval = 5;
                path = "/";
            };
            
            "tray#m2" = {
                icon-size = 18;
                spacing = 20;
            };
        
            "pulseaudio#m2" = {
                format = "{icon} {volume}%";
                format-muted = "󰝟";
                format-icons = {
                    default = ["󰕿" "󰖀" "󰕾"];
                };
                on-click = "bash ~/.config/waybar/scripts/volume mute";
                on-scroll-up = "bash ~/.config/waybar/scripts/volume up";
                on-scroll-down = "bash ~/.config/waybar/scripts/volume down";
                scroll-step = 5;
                on-click-right = "pavucontrol";
            };
        
            "pulseaudio#microphonem2" = {
                format = "{format_source}";
                format-source = " {volume}%";
                format-source-muted = " Muted";
                on-click = "pamixer --default-source -t";
                on-scroll-up = "pamixer --default-source -i 5";
                on-scroll-down = "pamixer --default-source -d 5";
                scroll-step = 5;
            };
            
            "custom/launcher" = {
                format = "";
                on-click = "wofi --show drun -I -a -n -W 500 -H 376 -s ~/.config/wofi/themes/gruvbox.css";
                on-click-right = "wofi --show run -I -a -n -W 500 -H 376 -s ~/.config/wofi/themes/gruvbox.css";  
            };
        
            "custom/wf-recorder" = {
                format = "{}";
                interval = "once";
                exec = "echo ''";
                tooltip = "false";
                exec-if = "pgrep 'wf-recorder'";
                on-click = "exec ./scripts/wlrecord.sh";
                signal = 8;
            };
        
            "custom/hyprpicker" = {
                format = "󰈋";
                on-click = "hyprpicker -a -f hex";
                on-click-right = "hyprpicker -a -f rgb";
            };
        
            "custom/spacer#clockmiddlem2" = {
                format = " ";
            };
        
            "custom/spacer#clocktopm2" = {
                format = " ";
            };
        
            "custom/spacer#pulseaudiomiddlem2" = {
                format = " ";
            };
        
            "custom/spacer#pulseaudiobottomm2" = {
                format = " ";
            };
        
            "custom/spacer#traym2top" = {
              format = " ";
            };
        
            "custom/spacer#traym2bottom" = {
                format = " ";
            };
        };
#     //////////////////////////////////
#     //right moitor 2
#     //////////////////////////////////
        m2-left = {
             id = "m2-left";
             name = "m2-left";
             output = "DP-2";
             height = 0;
             width = 130;
             margin = "0px 0px 0px 0px";
             layer = "top";
             position = "left";
             spacing = 4;
             modules-right = [ "custom/spacer#middlem2" "custom/spacer#middlem2" "custom/spacer#middlem2" "custom/spacer#middlem2" "custom/spacer#bottomm2" ];
             modules-center = [ "custom/filesm2" "custom/terminalm2" "custom/browserm2" "custom/spacer#topm2" "hyprland/workspaces#m2" "custom/spacer#middlem2" "custom/spacer#middlem2" ];
             modules-left = [ "network#m2" "network#m2speedup" "network#m2speedown" ];
         
             "hyprland/workspaces#m2" = {
                 active-only = false;
                 all-outputs = true;
                 disable-scroll = true;
                 disable-click = true;
                 persistent-workspaces = {
                     "1" = [];
                     "2" = [];
                     "3" = [];
                     "4" = [];
                     "5" = [];
                 };
                 format = "{icon}";
                 format-icons = {
                     "1" = "";
                     "2" = "";
                     "3" = "";
                     "4" = "";
                     "5" = "";
                     "urgent" = "";
                     "active" = "";
                     "default" = "";
                     "sort-by-number" = "true";
                 };
             };
 
             "custom/spacer#topm2" = {
                 format = " ";
             };
         
            "custom/spacer#middlem2" = {
                 format = " ";
             };
         
            "custom/spacer#bottomm2" = {
                 format = " ";
            };
 
             "network#m2" = {
                 interval = 5;
                 format-wifi = " ({signalStrength}%)"; # Icon: wifi
                 format-ethernet = "󰈀 {ipaddr}"; # Icon: ethernet
                 format-disconnected = "⚠ Disconnected";
                 tooltip-format = "{ifname}: {ipaddr}";
                 on-click = "kitty -e 'nmtui'";
             };
         
            "network#m2speedup" = {
                 interval = 5;
                 max-lengt = 4;
                 format-ethernet = " {bandwidthUpBytes}"; #Icon: ethernet
                 tooltip-format = "{ifname}: {ipaddr}";
                 on-click = "kitty -e 'nmtui'";
             };
         
            "network#m2speedown" = {
                 interval = 5;
                 max-lengt = 4;
                 format-ethernet = " {bandwidthDownBytes}"; # Icon: ethernet
                 tooltip-format = "{ifname}: {ipaddr}";
                 on-click = "kitty -e 'nmtui'";
            };
         
            "custom/browserm2" = {
                 format = "";
                 on-click = "exec librewolf"; #choose a browser
            };
     
             "custom/terminalm2" = {
                 format = "";
                 on-click = "exec kitty"; #choose a terminal
                 tooltip = false;
            };
     
             "custom/filesm2" = {
                 format = "";
                 on-click = "exec nautilus"; #choose a file manager
                 tooltip = false;             
            };
     
             "custom/launcher" = {
                 format = "";
                 on-click = "exec rofi";
                 tooltip = false;
            };
        }; 
     };
}
